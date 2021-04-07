require "bundler/setup"
require "height"
require 'byebug'
require 'vcr'
require 'webmock/rspec'

WebMock.disable_net_connect!(allow_localhost: true)

VCR.configure do |c|
  c.cassette_library_dir = 'spec/fixtures/cassettes'
  c.hook_into :webmock
  c.ignore_localhost = false
  c.allow_http_connections_when_no_cassette = true
  c.filter_sensitive_data('<HEIGHT_API_KEY>') { ENV['HEIGHT_API_KEY'] }
end

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"


  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
