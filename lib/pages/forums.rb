require_relative '../mixins/nav_bar'

module CGTest
  # Forums Page
  class ForumsPage < CGTest::PageBase
    include CGTest::NavBar

    def url_dir
      '/forums'
    end

    def page_title
      'Cheerful Ghost: Discussion Forums'
    end
  end
end
