require_relative '../mixins/nav_bar'

module CGTest
  # Events Page
  class EventsPage < CGTest::PageBase
    include CGTest::NavBar

    def url_dir
      '/events'
    end

    def page_title
      'Game Events For The Cheerful Ghost Community'
    end
  end
end
