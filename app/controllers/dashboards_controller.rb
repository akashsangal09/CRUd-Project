class DashboardsController < ApplicationController
	def index
		puts "**********************************"#{session}*****"
		puts "coming to dashbad 10@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ "
		@user = User.all
		# puts @user.id
	end

	def login_user
		puts "log in action"
		redirect_to root_path
	end


	def edit_user
		puts "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
		puts params
		@user = User.find_by(email:params[:email])

		puts "#{@user.email}"
		
	end


	def update_user
		puts "****************************************"
		puts params
		@user = User.find_by(email:params[:email])
		puts "This is the update user"
		puts ""
		
		Rails.logger.info "This is the update user"
		puts "#{@user}"
		if @user.present?
			puts "*********************#{@user}*****************"
			@user.update(fname:params[:fname], email:params[:email])
			# redirect_to dashboard_path
		end
		redirect_to dashboard_path
	end


	def user_destroy
		puts "comming to delete action"
		puts params
		@user = User.find_by_email(params[:email])
		 puts "#{@user}"
		 if @user
		 	@user.destroy
		 	# redirect_to dashboard_path
		 else 
		 	puts "please enter your details"
		end
	end

end
