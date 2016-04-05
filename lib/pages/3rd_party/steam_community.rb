module CGTest
  module ThirdParty
    # 3rd party steam community page (steamcommunity.com)
    class SteamCommunityPage < CGTest::PageBase
      def base_url
        'https://steamcommunity.com/openid/login'
      end

      def verify
        return if br.url.include? base_url
        raise "Expected #{base_url} but got #{br.url}"
      end

      def sign_in_button
        br.input(id: 'imageLogin')
      end

      def sign_in
        get_cookie('steam.cookie')
        br.refresh
        sign_in_button.click
      end
    end
  end
end
