require "transliterate/version"

require 'active_support/core_ext/string/multibyte'
require 'active_support/i18n'

module Transliterate
  def self.transliterate(string, replacement = "?".freeze)
    I18n.transliterate(ActiveSupport::Multibyte::Unicode.normalize(
      ActiveSupport::Multibyte::Unicode.tidy_bytes(string), :c),
        :replacement => replacement)
  end
end
