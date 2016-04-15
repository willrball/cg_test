require_relative '../mixins/nav_bar'
require_relative '../mixins/posts'

module CGTest
  # Interviews page
  class InterviewsPage < CGTest::PageBase
    include CGTest::NavBar
    include CGTest::Posts

    def url_dir
      '/interviews'
    end

    def page_title
      'Interviews With Interesting People in Gaming'
    end
  end
end
