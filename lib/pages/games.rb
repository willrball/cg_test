require_relative '../mixins/nav_bar'

module CGTest
  # Most Popular Games Page
  class MostPopularGamesPage < CGTest::PageBase
    include CGTest::NavBar

    def url_dir
      '/games/most_popular'
    end

    def page_title
      'Most Popular Games & Discussion Topics on Cheerful Ghost'
    end
  end
end
