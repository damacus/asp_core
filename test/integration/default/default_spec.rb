describe package('Microsoft ASP.NET Core Module') do
  it { should be_installed }
end

describe service('W3SVC') do
  it { should be_running }
end
