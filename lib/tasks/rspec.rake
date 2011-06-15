namespace :test do

  desc "Run all specs."
  RSpec::Core::RakeTask.new(:spec) do |t|
    t.pattern = 'spec/**/*_spec.rb'
    t.verbose = false
  end

  desc  "Run all specs with rcov"
  RSpec::Core::RakeTask.new(:rcov) do |t|
     t.pattern = 'spec/**/*_spec.rb'    
     t.rcov = true
     t.rcov_opts = %w{--rails --exclude osx\/objc,gems\/,spec\/}
   end

end

