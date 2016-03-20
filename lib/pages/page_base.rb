module CGTest
  class PageBase
    def initialize(browser)
      @br = browser
    end

    def br
      @br
    end

    def base_url
      'http://cheerfulghost.com'
    end

    def goto(url = '')
      br.goto(base_url + url)
    end
  end
end