require File.join(File.dirname(__FILE__), 'app.rb')

disable :run

set :env, :production

run Sinatra.application