
class BogsController < ApplicationController

	def index
		@bogs = Bog.all
		render :index
	end

	def new
		render :new
	end

	def create
		bog = params.require(:bog).permit(:name, :description)
		Bog.create(bog)
		redirect_to "/bogs"
	end


end
