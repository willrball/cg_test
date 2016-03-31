require_relative '../mixins/nav_bar'

module CGTest
  # The Signup/Sign in page (http://cheerfulghost.com/signup)
  class SignupPage < CGTest::PageBase
    include CGTest::NavBar

    def url_dir
      '/signup'
    end

    def goto
      super(url_dir)
    end

    def sign_in_steam_button
      br.link(title: 'Sign In with your Steam')
    end
  end
end
