class RelationshipsController < ApplicationController
	def create
		relationship = Relationship.new(relationship_params)
		relationship.follower_id = current_user.id
		relationship.save
		redirect_to request.referer
	end

	def destroy
		relationship = Relationship.find(params[:id]).destroy
		redirect_to request.referer
	end

	private
	def relationship_params
		params.require(:relationship).permit(:followed_id)
	end

end
