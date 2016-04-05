require_relative '../mixins/nav_bar'

module CGTest
  # About Page
  class AboutPage < CGTest::PageBase
    include CGTest::NavBar

    def url_dir
      '/about'
    end

    def page_title
      'About Cheerful Ghost'
    end
  end
end
