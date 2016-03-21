# Set $LOADPATH
$LOAD_PATH.unshift(File.expand_path('../../lib', __FILE__)) unless
  $LOAD_PATH.include?(File.expand_path('../../lib', __FILE__))

require 'cg_test'

RSpec.configure do |config|
  config.before(:all) do
    @br = Watir::Browser.new :chrome
  end

  config.after(:all) do
    @br.quit
  end
end
