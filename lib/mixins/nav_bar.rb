module CGTest
  # The navbar is prevalent in all pages. It represents the top navbar on the page
  module NavBar
    def profile_menu
      @br.button(id: 'dropdownMenu1')
    end

    def login_button
      @br.div(class: 'login')
    end

    def logout_link
      @br.link(text: 'Logout')
    end

    def alert_ok_button_click
      @br.alert.ok
    end

    def logout
      profile_menu.click
      logout_link.click
      alert_ok_button_click
    end
  end
end
