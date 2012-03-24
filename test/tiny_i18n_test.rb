# <libraries>

  require "test/minitest_helper"

# </libraries>

describe TinyI18n do

  before do

    # Loading locales file
    @i18n = TinyI18n.new("test/locales.yml")

  end

  it "must translate hello world" do

    # English
    @i18n.locale = "en"
    @i18n.translate("hello_world").must_equal "Hello world"

    # Spanish
    @i18n.locale = "es"
    @i18n.translate("hello_world").must_equal "Hola mundo"

  end

  it "must translate hello administrator" do

    # English
    @i18n.locale = "en"
    @i18n.translate("hello", :name => @i18n.translate("names.admin")).must_equal "Hello Administrator"

    # Spanish
    @i18n.locale = "es"
    @i18n.translate("hello", :name => @i18n.translate("names.admin")).must_equal "Hola Administrador"

  end

end
