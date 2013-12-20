class DestinationsController < ApplicationController
	def new
		@destination = Destination.new
	end

	def create
		@destination = Destination.new(params[:destination].permit(:name))

		if @destination.save
			redirect_to destinations_path
		else
			render 'new'
		end
	end

	def index
		@destinations = Destination.all
	end

	def show
		@destination = Destination.find(params[:id])
	end

	def edit
		@destination = Destination.find(params[:id])
	end

	def update
		@destination = Destination.find(params[:id])

		if @destination.update(params[:destination].permit(:name))
			redirect_to @destination
		else
			render 'edit'
		end
	end

	def destroy
		@destination = Destination.find(params[:id])
		@destination.destroy

		redirect_to destinations_path
	end

end
