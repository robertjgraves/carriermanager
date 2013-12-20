class CarriersController < ApplicationController
	def new
		@carrier = Carrier.new
	end

	def create
		@carrier = Carrier.new(params[:carrier].permit(:name))

		if @carrier.save
			redirect_to carriers_path
		else
			render 'new'
		end
	end

	def index
		@carriers = Carrier.all
	end

	def show
		@carrier = Carrier.find(params[:id])
	end

	def edit
		@carrier = Carrier.find(params[:id])
	end

	def update
		@carrier = Carrier.find(params[:id])

		if @carrier.update(params[:carrier].permit(:name))
			redirect_to @carrier
		else
			render 'edit'
		end
	end

	def destroy
		@carrier = Carrier.find(params[:id])
		@carrier.destroy

		redirect_to carriers_path
	end
end
