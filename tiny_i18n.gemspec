$:.push File.expand_path("../lib", __FILE__)
require "tiny_i18n"

Gem::Specification.new do |s|
  s.name = "tiny_i18n"
  s.version = TinyI18n::VERSION::STRING

  s.summary = "Reduced version of I18n"
  s.description = "Reduced version of I18n"

  s.license = "MIT"

  s.author = "Juan Colacelli"
  s.email = "juancolacelli@gmail.com"
  s.homepage = "https://github.com/juancolacelli/tiny_i18n"

  # Include everything in the lib folder
  s.files = Dir["lib/**/*.rb"]
end
