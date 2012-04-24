require "cuba"
require "open-uri"
require "nokogiri"

module CanonicalRepo
  def self.lookup(gem)
    links = Nokogiri(open("http://rubygems.org/gems/#{gem}").read).at(".meta .links")
    node = links.at(".//a[text() = 'Source Code']") || links.at(".//a[text() = 'Homepage']")
    node && node["href"]
  rescue OpenURI::HTTPError
    nil
  end
end

Cuba.define do
  on get do
    on ":gem" do |gem_name|
      if url = CanonicalRepo.lookup(gem_name)
        res.redirect url
      else
        res.status = 404
        res.write "Could not find '#{gem_name}' in RubyGems.org, or it does not have a homepage."
      end
    end

    on default do
      res.write <<-HTML
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Canonical Repository</title>
  </head>
  <body>
    <p>Go to <em>http://canonical-repo.herokuapp.com/:gem_name</em> to look up
      the gem's canonical repository.</p>

    <p>Read more about this at <a href="http://github.com/cubox/canonical-repo">http://github.com/cubox/canonical-repo</a>.</p>

    <p>Built with <3 by <a href="http://cuboxlabs.com">Cubox</a>.</p>
  </body>
</html>
      HTML
    end
  end
end

run Cuba
