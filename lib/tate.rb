lib = File.expand_path(File.dirname(__FILE__) + '/../lib')
$LOAD_PATH.unshift(lib) if File.directory?(lib) && !$LOAD_PATH.include?(lib)

require 'tate/version'

require 'i18n'
require 'yaml'

I18n.load_path << Dir[File.expand_path("lib/config/locales/*.yml")]
I18n.enforce_available_locales = false

module Tate
  def self.transliterate(string, language = nil, replacement = "?".freeze)
    I18n.transliterate(string, locale: language)
  end
end
