module CGTest
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
  end
end
