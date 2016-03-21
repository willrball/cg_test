require_relative '../mixins/nav_bar'

module CGTest
  class RootPage < CGTest::PageBase
    include CGTest::NavBar
  end
end
