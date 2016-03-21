module CGTest
  module NavBar
    def profile_menu
      br.button(id: 'dropdownMenu1')
    end

    def login_button
      br.div(class: 'login')
    end

    def click_profile_menu
      profile_menu.click
    end

    def click_login_button
      login_button.click
    end
  end
end
