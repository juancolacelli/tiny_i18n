# <libraries>

  # Yaml
  require "yaml"

  # TinyI18nVersion
  require "tiny_i18n/tiny_i18n_version"

# </libraries>

# TinyI18n
class TinyI18n

  # TinyI18nVersion
  include TinyI18nVersion

  # <attributes>

    # Locale
    attr_accessor :locale

    # File
    attr_accessor :file

  # </attributes>

  # <class methods>

    # Builder
    def initialize file
      # Default locale
      self.locale ||= :en
      # Load translations
      self.file = YAML.load_file(file)
    end

  # </class methods>

  # <instance methods>

    # Translate
    def translate text, args = {}
      # Translation
      translation = self.file[self.locale]
      # Converting key.subkey into key[subkey] and returning the translation
      translation = text.split(".").map do |key|
        translation = translation[key]
      end.last
      # Variables
      args.each_pair do |key, value|
        # Replace
        translation = translation.to_s.gsub("%{#{key}}", value.to_s)
      end
      # Return
      translation
    end

  # </instance methods>

end
