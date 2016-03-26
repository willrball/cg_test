module CGTest
  # This class contains login workflows
  class LoginWorkflow
    def initialize(browser)
      @br = browser
    end

    def root_page_login
      root_page = CGTest::RootPage.new(@br)
      root_page.goto
      root_page.login_button.click
    end

    def singup_page_steam_signin
      signup_page = CGTest::SignupPage.new(@br)
      signup_page.verify
      signup_page.sign_in_steam_button.click
    end

    def steam_community_signin
      steam_community_page = CGTest::ThirdParty::SteamCommunityPage.new(@br)
      steam_community_page.sign_in
    end

    def login_with_steam
      root_page_login
      singup_page_steam_signin
      steam_community_signin
      root_page = CGTest::RootPage.new(@br)
      root_page.verify
      root_page
    end
  end
end
