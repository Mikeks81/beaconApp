class UsersController < ApplicationController
	def index
		render json: User.all.order('created_at ASC')
	end

	def update
		@user = User.find(params[:id])
		if @user.update_attributes(user_params)
			render json: @user
		end
	end

	private

	def user_params
		params.require(:user).permit(:name,:email,:active)
	end
end
