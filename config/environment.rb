# Load the rails application
require File.expand_path('../application', __FILE__)

env_vars = File.join('config', 'env_vars.rb')
if File.exists?(env_vars)
  load(env_vars) 
else
  puts ('env vars did not load')
end

# Initialize the rails application
Nonprofit::Application.initialize!
