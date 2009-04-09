require File.join(File.dirname(__FILE__), 'app.rb')

require 'rubygems'
require 'sinatra'

Sinatra::Application.default_options.merge!(
      :run => false,
        :env => :production,
          :raise_errors => true
    )
log = File.new("sinatra.log", "a")
STDOUT.reopen(log)
STDERR.reopen(log)
run Sinatra.application
