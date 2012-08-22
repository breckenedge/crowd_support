Gem::Specification.new do |spec|
  spec.platform = Gem::Platform::RUBY
  spec.version = "0.0.4"
  spec.name = "crowd_support"
  spec.summary = "solutions to common problems sourced from the internet"
  spec.description = "Incorporating solutions found on Google, StackExchange, etc. that I've needed to use more than once"
  spec.required_ruby_version = ">= 1.9.1"
  spec.required_rubygems_version = ">= 1.3.6"
  spec.author = "Aaron Breckenridge"
  spec.email = "aaronbreckenridge@gmail.com"
  spec.homepage = "https://github.com/breckenedge/crowd_support"
  spec.files = Dir['README.md', 'lib/**/*']
  spec.require_path = 'lib'
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rake"
end
