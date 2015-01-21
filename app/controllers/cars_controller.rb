class CarsController < ApplicationController
	def new
		@car = Car.new
	end

	def create
		@car = Car.create que_params
		redirect_to root_path
	end

	def show
		@car = Car.find params[:id]
	end

	def edit
		@car = Car.find params[:id]
	end

	def update
		@car = Car.find params[:id]
		@car.update_attributes que_params
		redirect_to root_path
	end

	def destroy
		@car = Car.find params[:id]
		@car.destroy
		redirect_to root_path
	end

	def que_params
		params.require(:car).permit(
			:make,
			:model,
			:year

			)
	end
end
