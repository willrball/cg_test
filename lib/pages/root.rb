require_relative '../mixins/nav_bar'

module CGTest
  # The root page (http://cheerfulghost.com/)
  class RootPage < CGTest::PageBase
    include CGTest::NavBar

    def url_dir
      '/'
    end
  end
end
