class LinksController < ApplicationController

	def index
		@links = Link.all
	end

	def import
		Link.import(params[:file])
		redirect_to 'links'
	end

end