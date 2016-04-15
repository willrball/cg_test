require_relative '../mixins/nav_bar'
require_relative '../mixins/posts'

module CGTest
  # The root page (http://cheerfulghost.com/)
  class RootPage < CGTest::PageBase
    include CGTest::NavBar
    include CGTest::Posts

    def url_dir
      '/'
    end

    def page_title
      'Cheerful Ghost: An Awesome Community For Gamers'
    end
  end
end
