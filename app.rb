require 'sinatra'
require 'sinatra/reloader'
require 'csv'


		get '/' do
			@voice= CSV.read('/posts.csv') 
			erb :index
		end
	


		post '/' do 
			CSV.open('/posts.csv').each do |csv|
				csv << params[:post]
			end
			redirect '/'
		end

		
		





