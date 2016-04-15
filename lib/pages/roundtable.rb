require_relative '../mixins/nav_bar'
require_relative '../mixins/posts'

module CGTest
  # Roundtable Page
  class RoundtablePage < CGTest::PageBase
    include CGTest::NavBar
    include CGTest::Posts

    def url_dir
      '/roundtable'
    end

    def page_title
      'The Cheerful Ghost Rountable'
    end
  end
end
