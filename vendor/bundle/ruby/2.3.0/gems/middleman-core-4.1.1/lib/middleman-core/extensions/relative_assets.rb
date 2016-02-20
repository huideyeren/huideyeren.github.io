require 'addressable/uri'

# Relative Assets extension
class Middleman::Extensions::RelativeAssets < ::Middleman::Extension
  option :exts, %w(.css .png .jpg .jpeg .webp .svg .svgz .js .gif .ttf .otf .woff .woff2 .eot), 'List of extensions that get cache busters strings appended to them.'
  option :sources, %w(.css .htm .html .xhtml), 'List of extensions that are searched for relative assets.'
  option :ignore, [], 'Regexes of filenames to skip adding query strings to'
  option :rewrite_ignore, [], 'Regexes of filenames to skip processing for path rewrites'

  def initialize(app, options_hash={}, &block)
    super

    app.rewrite_inline_urls id: :asset_hash,
                            url_extensions: options.exts,
                            source_extensions: options.sources,
                            ignore: options.ignore,
                            rewrite_ignore: options.rewrite_ignore,
                            proc: method(:rewrite_url)
  end

  helpers do
    # asset_url override for relative assets
    # @param [String] path
    # @param [String] prefix
    # @param [Hash] options Additional options.
    # @return [String]
    def asset_url(path, prefix='', options={})
      options[:relative] = true unless options.key?(:relative)

      super(path, prefix, options)
    end
  end

  Contract String, Or[String, Pathname], Any => Maybe[String]
  def rewrite_url(asset_path, dirpath, request_path)
    uri = ::Addressable::URI.parse(asset_path)

    return if uri.path[0..0] != '/'

    relative_path = uri.host.nil?

    full_asset_path = if relative_path
      dirpath.join(asset_path).to_s
    else
      asset_path
    end

    current_dir = Pathname(request_path).dirname
    result = Pathname(full_asset_path).relative_path_from(current_dir).to_s

    result
  end
end
