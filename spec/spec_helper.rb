require "rack/test"
require "rspec"

RSpec.configure do |configuration|
  include Rack::Test::Methods

  configuration.before :each do
  end
end
