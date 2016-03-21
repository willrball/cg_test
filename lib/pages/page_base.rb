module CGTest
  # The base of all pages
  class PageBase
    attr_reader :br

    def initialize(browser)
      @br = browser
    end

    def base_url
      'http://cheerfulghost.com'
    end

    def goto(url = '')
      br.goto(base_url + url)
    end

    def get_cookie(cookie_file)
      abort "data/#{cookie_file} not found" unless File.file?("data/#{cookie_file}")
      br.cookies.load("data/#{cookie_file}")
    end
  end
end
