# Canonical Repo

I like reading source code. I like knowing what the gems I use are up to, and
when they don't work, I like reading their source code to find out why they
don't work.

My workflow, usually, is this:

* Determine I want to read a gem's source code.
* Go to `http://rubygems.org/gems/<GEM_NAME>`
* Look for the `Source Code` link, or the `Homepage` link, check it points to
  GitHub or something similar, and click it.

I do that a few times a day. So I built this (very) tiny web app, that, given
the name of a gem, will automate those steps and redirect you to the canonical
location of the gem's source code (as long as it's specified in RubyGems.org).

## Add it as a Chrome search engine

My preferred way of using this is to add it as a Chrome search engine. After
doing that, all I need to type in my URL bar is `repo <GEM_NAME>`, and I get
instantly redirected to the corresponding page :)

## License

(The MIT License)

Copyright (c) 2012 [Nicolas Sanguinetti][me], with the support of [Cubox][cubox]

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

[me]:    http://nicolassanguinetti.info
[cubox]: http://cuboxlabs.com
