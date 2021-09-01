class FollowsController < ApplicationController
	def follow
		user = User.find(params[:user_id])
		@follow = user.following.page(params[:page]).per(20)
	end
	def follower
		user = User.find(params[:user_id])
		@follower = user.follower.page(params[:page]).per(20)
	end
end
