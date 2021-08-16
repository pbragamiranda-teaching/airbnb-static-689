# require "open-uri"

class FlatsController < ApplicationController

	before_action :fetch_all_flats

	def index
	end

	def show
		flat_id = params[:id].to_i
		@flat = @flats.find { |flat| flat_id == flat['id'] }
		# raise
	end

	private

	def fetch_all_flats
		url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
		@flats = JSON.parse(open(url).read)
	end		

end
