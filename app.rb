require 'sinatra'
require 'sinatra/reloader'

class MegaPhone

	get '/' do
		@voice = voice.create(voice: params["voice"], created_at: params[Time.now])
		erb :index
	end
		erb :index
	
end