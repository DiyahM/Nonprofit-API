# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard 'bundler' do
  watch('Gemfile')
end

guard 'rspec', version: 2, cli: File.read(".rspec").delete("\n") do
  watch('.rspec')               { "spec" }
  watch('Gemfile.lock')         { "spec" }
  watch(%r{^spec/.+_spec\.rb$})
  watch(%r{^spec/.+.feature$})
  watch('spec/spec_helper.rb')  { "spec" }

  # Rails example
  watch(%r{^lib})                                     { "spec" }
  watch(%r{^app})                                     { "spec" }
  watch(%r{^spec/support/(.+)\.rb$})                  { "spec" }
  watch('config/routes.rb')                           { "spec" }
  watch('app/controllers/application_controller.rb')  { "spec/controllers" }
  watch(%r{^spec/acceptance/definitions})             { "spec/acceptance" }
end

