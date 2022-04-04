source "https://rubygems.org"

gem "minima", "~> 2.5.1"

group :jekyll_plugins do
  gem "github-pages", "~> 225"
  gem 'jekyll-relative-links'
  gem 'jekyll-sitemap'
end

gem 'html-proofer'

platforms :mingw, :x64_mingw, :mswin, :jruby do
  gem "tzinfo", "~> 1.2"
  gem "tzinfo-data"
end

gem "wdm", "~> 0.1.1", :platforms => [:mingw, :x64_mingw, :mswin]

# Lock `http_parser.rb` gem to `v0.6.x` on JRuby builds since newer versions of the gem
# do not have a Java counterpart.
gem "http_parser.rb", "~> 0.6.0", :platforms => [:jruby]