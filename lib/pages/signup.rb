require_relative '../mixins/nav_bar'

module CGTest
  # The Signup/Sign in page (http://cheerfulghost.com/signup)
  class SignupPage < CGTest::PageBase
    include CGTest::NavBar

    def goto
      super('/signup')
    end

    def steam_button
      br.link(title: 'Sign In with your Steam')
    end

    def signin_steam
      steam_button.click
      get_cookie('steam.cookie')
      br.refresh
      CGTest::ThirdParty::SteamCommunityPage.new(br)
    end
  end
end
