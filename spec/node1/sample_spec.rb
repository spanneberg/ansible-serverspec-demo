require 'spec_helper'

describe user('app') do
  it { should exist }
  it { should have_login_shell '/usr/sbin/nologin' }
end

# describe service('demo-app'), :if => os[:family] == 'ubuntu' do
describe service('demo-app') do
  it { should be_running }
end

describe port(8080) do
  it { should be_listening }
end
