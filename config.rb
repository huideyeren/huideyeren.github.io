###
# Blog settings
###

require 'extensions/sitemap.rb'
require_relative "./lib/build_cleaner"

Time.zone = 'Tokyo'

activate :blog do |blog|
  # This will add a prefix to all links, template references and source paths
  # blog.prefix = "blog"

  # Permalink format
  blog.permalink = '{year}/{month}/{day}/{title}.html'
  # Matcher for blog source files
  blog.sources = 'posts/{year}-{month}-{day}-{title}.html'
  blog.summary_length = 250
  blog.default_extension = '.md'
  blog.tag_template = 'tag.html'
  blog.calendar_template = 'calendar.html'

  # Enable pagination
  blog.paginate = true
  blog.per_page = 10
  blog.page_link = 'page/{num}'
end

page '/feed.xml', layout: false
page '/sitemap.xml', layout: false
page '/robots.txt', layout: false

activate :social_tag_view_helper
set :facebook_app_id, '1004829916221603'
set :twitter_user_name, 'huideyeren'

###
# Compass
###

# Change Compass configuration
# compass_config do |config|
#   config.output_style = :compact
# end

###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", layout: false
#
# With alternative layout
# page "/path/to/file.html", layout: :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }

# Asset directory settings
set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

# Markdown settings

set :markdown, input: "GFM", hard_wrap: true, header_offset: 1

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # Enable cache buster
  activate :asset_hash

  # Use relative URLs
  activate :relative_assets

  # Or use a different image path
  # set :http_prefix, "/Content/images/"

  activate :gzip

  activate :build_cleaner
end

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

# Syntax highlight settings
activate :syntax

# Generate sitemap after build
activate :sitemap_generator

# Activate Directory Indexes
activate :directory_indexes

# Activate Deploy
activate :deploy do |deploy|
  deploy.method = :git
  deploy.branch = 'master'
  deploy.build_before = true
end

# Activate S3Sync
activate :s3_sync do |s3_sync|
  s3_sync.bucket                     = 'my.bucket.com' # The name of the S3 bucket you are targetting. This is globally unique.
  s3_sync.region                     = 'us-west-1'     # The AWS region for your bucket.
  s3_sync.aws_access_key_id          = ENV['AWS_ACCESS_KEY_ID']
  s3_sync.aws_secret_access_key      = ENV['AWS_SECRET_ACCESS_KEY']
  s3_sync.delete                     = true
  s3_sync.after_build                = false
  s3_sync.prefer_gzip                = true
  s3_sync.path_style                 = true
  s3_sync.reduced_redundancy_storage = false
  s3_sync.acl                        = 'public-read'
  s3_sync.encryption                 = false
  s3_sync.prefix                     = ''
  s3_sync.version_bucket             = false
end

# Add assets path installed via npm
after_configuration do
  sprockets.append_path File.join "#{root}", "node_modules"

  Dir.glob(File.join("#{root}", "node_modules", "@fortawesome", "fontawesome-free", "webfonts", "*")) do |file|
    asset_path = Pathname.new(file).relative_path_from(Pathname.new(File.join(root, "node_modules")))
    sprockets.import_asset asset_path do |path|
      org_path = Pathname.new(path)
      "webfonts/#{org_path.basename}"
    end
  end
end

###
# Site Settings
###

# set site URL
set :site_url, 'https://huideyeren.info'
# set site title
set :site_title, '恢徳堂のヨーシャさんのブログ'
# set site description (only used for meta description for the moment)
set :site_description, 'ヨーシャことIosif Takakuraのブログです。IT技術のことやトミーウォーカーのPBWのこと、同人活動のことも含む様々なことをつぶやいてます。'
# set site author name
set :site_author, 'Iosif Takakura'
# set site author profile information
set :site_author_profile, '1981年、東京に生まれました。修士（史学）ですがいろいろな技術に興味を持ち、今ではプログラマー・システムエンジニアをしながら物書きもしていたり、写真を撮ったりしています。発達障がい、とりわけADHD当事者です。MBTI診断ではENFPタイプです。一応正教会に属するクリスチャンです。いわゆるオタクです。「個」が尊重される、持続可能で公正な社会を目指します。 モットー：【自由・平等・寛容・生存・環境】'
# set site author profile image (should be in images_dir)
set :site_author_image, 'mongolian.jpg'
# when true, the page and site titles will be reversed (page title | site title)
set :reverse_title, true
# twitter/facebook/github/linkedin links in author page (otherwise set nil)
set :social_links,
    twitter: 'https://twitter.com/huideyeren',
    facebook: 'https://www.facebook.com/iosif.takakura.yusuke',
    instagram: 'https://www.instagram.com/huideyeren/',
    github: 'https://github.com/huideyeren',
    line: 'https://line.me/ti/p/2u4zlIT0uf',
    steam: 'https://steamcommunity.com/id/huideyeren/'
# set Google Analytics account, like "XX-12345678-9"
set :google_analytics_account, 'UA-48887790-1'
