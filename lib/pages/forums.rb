require_relative '../mixins/nav_bar'
require_relative '../mixins/posts'

module CGTest
  # Forums Page
  class ForumsPage < CGTest::PageBase
    include CGTest::NavBar
    include CGTest::Posts

    def url_dir
      '/forums'
    end

    def page_title
      'Cheerful Ghost: Discussion Forums'
    end
  end
end
