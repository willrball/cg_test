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

    def verify
      return if br.url == (base_url + url_dir)
      raise "Expected #{base_url}#{url_dir} but got #{br.url}"
    end

    def goto(url = '')
      br.goto(base_url + url)
      verify
    end

    def get_cookie(cookie_file)
      raise "data/#{cookie_file} not found" unless File.file?("data/#{cookie_file}")
      br.cookies.load("data/#{cookie_file}")
    end
  end
end
