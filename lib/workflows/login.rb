module CGTest
  # This class contains login workflows
  class LoginWorkflow
    def initialize(browser)
      @br = browser
    end

    def login_with_steam
      root_page = CGTest::RootPage.new(@br)
      root_page.goto
      signup_page = root_page.click_login_button
      steam_community_page = signup_page.signin_steam
      steam_community_page.sign_in_button_click
      root_page
    end
  end
end
