class SessionController < ApplicationController
  def new
  end
  def create  
  post = User.authenticate(params[:email], params[:password])  
  if user  
      session[:post_id] = post.id  
      redirect_to root_url, :notice => "Logged in!"  
    else  
    flash.now.alert = "Invalid email or password"  
    render "new"  
   end  
  end  
end    
