class OriginsController < ApplicationController
	def new
		@origin = Origin.new
	end

	def create
		@origin = Origin.new(params[:origin].permit(:name))

		if @origin.save
			redirect_to origins_path
		else
			render 'new'
		end
	end

	def index
		@origins = Origin.order(:name).all
	end

	def show
		@origin = Origin.find(params[:id])
	end

	def edit
		@origin = Origin.find(params[:id])
	end

	def update
		@origin = Origin.find(params[:id])

		if @origin.update(params[:origin].permit(:name))
			redirect_to @origin
		else
			render 'edit'
		end
	end

	def destroy
		@origin = Origin.find(params[:id])
		@origin.destroy

		redirect_to origins_path
	end
end
