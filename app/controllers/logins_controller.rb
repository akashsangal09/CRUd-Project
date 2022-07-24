class LoginsController < ApplicationController
	def index
		
		
	end

	def create_new_account
		puts "coming to here controller"
		
		# redirect_to create_new_account_path
	end

	def new
		puts "coming to new methods"
		puts params 
		puts params["fullname"]
		if params.present?
	
		 user = User.create(fname:params[:fname], lname:params[:lname],email:params[:email],password:params[:password])
			puts  "save successfuly"
			puts "#{user}"
			@message = "save successfuly"
			redirect_to root_path
		else
			@message = "save successfuly"
			redirect_to root_path
		end

	end

	def login_success
		puts "coming to login **********"
		user = User.find_by(email:params[:email])
		puts "User present"
		if user.present? 
			puts "user"
				redirect_to dashboard_path		
		else
			puts "User not present"
			{code:500, message:"Please enter correct user name and password"}
		end
	end
end
