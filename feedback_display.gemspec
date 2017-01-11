Gem::Specification.new do |s|
  s.name        = 'feedback_display'
  s.version     = '0.0.1'
  s.date        = '2017-01-11'
  s.summary     = 'Displays the contents of the feedback table.'
  s.description = 'Displays the contencts of the deap feedback table. Runs as a standalone Sinatra application.'
  s.authors     = ['Dustin DiMattia']
  s.email       = 'dustindimattia@protonmail.com'
  s.files       = ['lib/feedback_display.rb', 'lib/config.ru', 'lib/views/index.erb', 'lib/models/pointless_feedback_message.rb']
  s.homepage    = 'https://github.com/DustinDiMattia/feedback_display'
  s.license     = 'Free to use so long as you do not attribute this mess to me.'
  s.executables = ["feedback_display"]
  s.add_runtime_dependency 'sinatra', '~> 1.4', '>= 1.4.7'
  s.add_runtime_dependency 'sequel', '~> 4.42', '>= 4.42.0'
  s.add_runtime_dependency 'pg', '~> 0.19', '>= 0.19.0'
  s.add_runtime_dependency 'dotenv', '~> 2.1', '>= 2.1.1'
end