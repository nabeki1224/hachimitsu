class GoodsController < ApplicationController
	def create
		good = Good.new
		mitsu = Mitsu.find(params[:mitsu_id])
		good.user_id = current_user.id
		good.mitsu_id = mitsu.id
		good.save
		redirect_to request.referer
	end

end

