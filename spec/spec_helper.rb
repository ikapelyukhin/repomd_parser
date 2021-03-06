require 'bundler/setup'
require 'simplecov'
SimpleCov.start do
  add_filter '/spec/'
  minimum_coverage 100
end

require 'repomd_parser'

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = '.rspec_status'

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  def file_fixture(path)
    File.join(__dir__, 'fixtures', 'files', path).to_s
  end
end
