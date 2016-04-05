module CGTest
  # The navbar is prevalent in all pages. It represents the top navbar on the page
  module NavBar
    def navbar
      br.ul(class: 'nav navbar-nav')
    end

    def profile_menu
      br.button(id: 'dropdownMenu1')
    end

    def login_button
      br.div(class: 'login')
    end

    def logout_link
      br.link(text: 'Logout')
    end

    def cheerful_ghost_logo
      br.link(class: 'navbar-brand')
    end

    def games_nav
      navbar.link(text: 'Games')
    end

    def forums_nav
      navbar.link(text: 'Forums')
    end

    def interviews_nav
      navbar.link(text: 'Interviews')
    end

    def roundtable_nav
      navbar.link(text: 'Roundtable')
    end

    def membership_nav
      navbar.link(text: 'Membership')
    end

    def events_nav
      navbar.link(text: /Events/)
    end

    def about_nav
      navbar.link(text: 'About')
    end

    def alert_ok_button_click
      br.alert.ok
    end

    def logout
      profile_menu.click
      logout_link.click
      alert_ok_button_click
    end
  end
end
