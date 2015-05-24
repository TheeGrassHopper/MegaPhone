require 'sinatra'
require 'sinatra/reloader'
require 'csv'


		get '/megaphone' do
			@voice= CSV.read('/posts.csv') 
			erb :index
		end
	


		post '/megaphone' do 
			CSV.open('/posts.csv').each do |csv|
				csv << params[:post]
			end
			redirect '/'
		end

		
		





