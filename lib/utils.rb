module CGTest
  # Common utility modules that are used by rspec
  module Utils
    def screenshot_dir
      'failure_pics'
    end

    def time
      Time.now.strftime '%m%d%y_%H%M%S'
    end

    def test_name(example)
      example.metadata[:example_group][:full_description].tr(' ', '_') + '_' +
        example.description.tr(' ', '_')
    end

    def take_screenshot(example)
      @br.screenshot.save "failure_pics/#{test_name(example)}_#{time}.png"
    end
  end
end
