require 'watir'
require 'fileutils'

require_relative 'utils'

require './lib/pages/page_base'
Dir[File.dirname(__FILE__) + '/pages/**/*.rb'].each { |file| require_relative file.to_s }
Dir[File.dirname(__FILE__) + '/workflows/**/*.rb'].each do |file|
  require_relative file.to_s
end
