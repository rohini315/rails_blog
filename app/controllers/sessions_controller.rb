class SessionsController < ApplicationController
# 	def new
# 	end

# 	def create
#   		@user = User.new(params[:username], params[:password])
# 		if @user
# 			session[:user_id]=user.id
# 			redirect_to root_url, :notice => "Logged In"
# 		else
# 			flash[:notice] = "Incorrect Information"
# 		end
# 	end


# 	def destroy
# 	  session[:user_id] = nil
# 	  redirect_to root_url, :notice => "Logged out!"
# 	end 
# end
