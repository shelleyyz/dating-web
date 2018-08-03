class SessionController < ApplicationController
  def new
    end

    def create
      #get use with this email address:
      user = User.find_by :username => params[:username]
      #if passwords match (encrypted ones)
      if user.present? && user.authenticate(params[:password])
        #remember this user in the session hash
        session[:user_id] = user.id
        #and redirect them to home page #NOTE CHANGE THIS TO DASH PAGE!
        redirect_to users_profile_path
        #else if the passwords dont match, redirect them to the login
      else
        #flash is different to session in that it only stores date for one refresh, session stores it until you tell it not to anymore (with destroy method)
        flash[:error] = "Invalid username or password entered"
        redirect_to login_path
      end
    end

    def destroy
      session[:user_id] = nil
      redirect_to root_path
      #above, not deleting user just getting comp to drop the session when they press logout.
    end
end
