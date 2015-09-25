require 'spec_helper'

# describe package('apache2'), :if => os[:family] == 'ubuntu' do
#   it { should be_installed }
# end

# describe service('demo-app'), :if => os[:family] == 'ubuntu' do
describe service('demo-app') do
  it { should be_running }
end

describe port(8080) do
  it { should be_listening }
end
