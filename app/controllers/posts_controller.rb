class PostsController < ApplicationController
	 def new
	 	@a= Post.new
	 end
	  def create
	  	@a= Post.new(post_params)
	  	@a.save
	  	redirect_to root_url, :notice => "signed up"
	  end

	  	def post_params
	  		params.require(:post).permit(:email,:password,:password_confirmation)
         end
end
