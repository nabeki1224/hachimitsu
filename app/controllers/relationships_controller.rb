class RelationshipsController < ApplicationController
	def create
		@relationship = Relationship.new(relationship_params)
		@user = @relationship.followed
		@relationship.follower_id = current_user.id
		@relationship.save
	end

	def destroy
		@relationship = Relationship.find(params[:id])
		@user = @relationship.followed
		@relationship.destroy
	end

	private
	def relationship_params
		params.require(:relationship).permit(:followed_id)
	end

end
