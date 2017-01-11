require 'sinatra'
require 'sequel'
require 'dotenv'
Dotenv.load

class FeedbackDisplay < Sinatra::Base

  before do
    username = ENV['USERNAME']
    password = ENV['PASSWORD']
    host = ENV['HOST']
    database = ENV['DATABASE']

    connect_string = 'postgres://' + username + ':' + password + '@' + host + '/' + database
    
    DB = Sequel.connect(connect_string)
  end

  get '/' do
    @feedback_messages = DB[:pointless_feedback_messages].all
    
    erb :index
  end

end