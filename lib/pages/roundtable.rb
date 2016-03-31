require_relative '../mixins/nav_bar'

module CGTest
  # Roundtable Page
  class RoundtablePage < CGTest::PageBase
    include CGTest::NavBar

    def url_dir
      '/roundtable'
    end

    def page_title
      'The Cheerful Ghost Rountable'
    end
  end
end
