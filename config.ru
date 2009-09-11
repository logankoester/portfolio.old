require File.join(File.dirname(__FILE__), 'app.rb')

disable :run

set :environment, :production

log = File.new(File.join(File.dirname(__FILE__), "sinatra.log"), "a")
STDOUT.reopen(log)
STDERR.reopen(log)

run Sinatra::Application
