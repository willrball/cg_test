require 'watir'

# Set $LOADPATH
$LOAD_PATH.unshift(File.expand_path(File.dirname(__FILE__))) unless
  $LOAD_PATH.include?(File.dirname(__FILE__)) ||
  $LOAD_PATH.include?(File.expand_path(File.dirname(__FILE__)))

require 'pages/page_base'

Dir[File.dirname(__FILE__) + '/pages/**/*.rb'].each { |file| require file.to_s }
Dir[File.dirname(__FILE__) + '/workflows/**/*.rb'].each { |file| require file.to_s }
