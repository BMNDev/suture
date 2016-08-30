if Gem.ruby_version >= Gem::Version.new("1.9.3") && ENV['CI']
  require "codeclimate-test-reporter"
  SimpleCov.start do
    add_filter "/safe/fixtures" #<- not intended to be covered w/ tests.
  end
  CodeClimate::TestReporter.start
end

