module CGTest
  # The navbar is prevalent in all pages. It represents the top navbar on the page
  module NavBar
    def profile_menu
      br.button(id: 'dropdownMenu1')
    end

    def login_button
      br.div(class: 'login')
    end

    def logout_link
      br.link(text: 'Logout')
    end

    def alert_ok_button_click
      br.alert.ok
    end

    def click_profile_menu
      profile_menu.click
    end

    def click_login_button
      login_button.click
      CGTest::SignupPage.new(br)
    end

    def click_logout_link
      logout_link.click
    end

    def logout
      click_profile_menu
      click_logout_link
      alert_ok_button_click
    end
  end
end
