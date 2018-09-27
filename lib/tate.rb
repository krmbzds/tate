lib = File.expand_path(File.dirname(__FILE__) + '/../lib')
$LOAD_PATH.unshift(lib) if File.directory?(lib) && !$LOAD_PATH.include?(lib)

require "tate/version"

require 'active_support/core_ext/string/multibyte'
require 'active_support/i18n'
require 'yaml'

module Tate
  def self.transliterate(string, language = nil, replacement = "?".freeze)
    string = language_filter(string, language)
    I18n.transliterate(ActiveSupport::Multibyte::Unicode.normalize(
      ActiveSupport::Multibyte::Unicode.tidy_bytes(string), :c),
        :replacement => replacement)
  end

  def self.language_filter(string, language)
    glyph_rules = load_rules('glyphs')
    language_rules = load_rules(language)
    conversion_map = glyph_rules.merge(language_rules)
    re = Regexp.new(conversion_map.keys.map { |x| Regexp.escape(x) }.join('|'))
    string.gsub(re, conversion_map)
  end

  def self.load_rules(language)
    YAML.load_file("lib/rules/#{language}.yml") rescue {}
  end
end
