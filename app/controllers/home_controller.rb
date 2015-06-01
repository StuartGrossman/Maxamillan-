class HomeController < ApplicationController
	def index
	end
	def soundcould
		# create a client object with your app credentials
		client = Soundcloud.new(:client_id => 'xxxxxxxxxxxxxxxxxxxx')

# get a tracks oembed data
		track_url = 'https://soundcloud.com/maximillianpuzzle/the-signess'
		embed_info = client.get('/oembed', :url => track_url)

# print the html for the player widget
		puts embed_info['html']
	end
end
