# Set $LOADPATH
$LOAD_PATH.unshift(File.expand_path('../../lib', __FILE__)) unless
  $LOAD_PATH.include?(File.expand_path('../../lib', __FILE__))

require 'cg_test'

def screenshot_dir
  'failure_pics'
end

def time
  Time.now.strftime "%m%d%y_%H%M%S"
end

def test_name(example)
  example.metadata[:example_group][:full_description].gsub(' ', '_') + '_' +
      example.description.gsub(' ', '_')
end

def take_screenshot(example)
  @br.screenshot.save "failure_pics/#{test_name(example)}_#{time}.png"
end

RSpec.configure do |config|
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
