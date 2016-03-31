require_relative '../mixins/nav_bar'

module CGTest
  # Memebership page
  class MembershipPage < CGTest::PageBase
    include CGTest::NavBar

    def url_dir
      '/membership'
    end

    def page_title
      'Become a Cheerful Ghost Backer, Get Awesome Stuff'
    end
  end
end
