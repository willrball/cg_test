require_relative '../mixins/nav_bar'

module CGTest
  # Interviews page
  class InterviewsPage < CGTest::PageBase
    include CGTest::NavBar

    def url_dir
      '/interviews'
    end

    def page_title
      'Interviews With Interesting People in Gaming'
    end
  end
end
