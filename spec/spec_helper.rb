require 'bundler/setup'

require 'aruba/rspec'
require 'smf/solaris'

RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
  config.filter_run :focus

  config.before :each do
    Aruba::RSpec.setup
  end

  config.after :each do
    Aruba::RSpec.teardown
  end

  config.order = 'random'
end
