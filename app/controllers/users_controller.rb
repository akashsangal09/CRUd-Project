class UsersController < ApplicationController
	

	def user_profile
		@user = User.find_by(email:params[:email])
		if @user.present?
			@user
		end
	end

end

