class BadsController < ApplicationController
	def create
		bad = Bad.new
		mitsu = Mitsu.find(params[:mitsu_id])
		bad.user_id = current_user.id
		bad.mitsu_id = mitsu.id
		bad.save
		redirect_to request.referer
	end

end
