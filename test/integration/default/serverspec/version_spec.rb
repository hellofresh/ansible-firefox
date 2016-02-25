require 'serverspec'

# Required by serverspec
set :backend, :exec

# Default version
describe command('firefox --version') do
  its(:stdout) { should contain('43.0') }
end

describe command('/opt/firefox/43.0/firefox/firefox --version') do
  its(:stdout) { should contain('43.0') }
end

describe command('/opt/firefox/40.0/firefox/firefox --version') do
  its(:stdout) { should contain('40.0') }
end

describe command('/opt/firefox/37.0/firefox/firefox --version') do
  its(:stdout) { should contain('37.0') }
end
