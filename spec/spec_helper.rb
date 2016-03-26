require_relative '../lib/cg_test'

RSpec.configure do |config|
  include CGTest::Utils

  config.before(:all) do
    @br = Watir::Browser.new :chrome
  end

  config.after(:all) do
    @br.quit
  end

  config.after(:each) do |example|
    if example.exception
      FileUtils.mkdir_p(screenshot_dir) unless File.directory?(screenshot_dir)
      take_screenshot(example)
    end
  end
end
