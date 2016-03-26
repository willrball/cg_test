module CGTest
  module ThirdParty
    # 3rd party steam community page (steamcommunity.com)
    class SteamCommunityPage < CGTest::PageBase
      def sign_in_button
        br.input(id: 'imageLogin')
      end
    end
  end
end
