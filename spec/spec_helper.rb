require 'spec'
$: << File.dirname(__FILE__) + "/../lib"
require 'tiny_mime'

def fixtures_directory
  File.dirname(__FILE__) + '/../test/fixtures'
end
