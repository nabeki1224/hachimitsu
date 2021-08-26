class BadsController < ApplicationController
	def create
		bad = Bad.new
		mitsu = Mitsu.find(params[:mitsu_id])
		bad.user_id = current_user.id
		bad.mitsu_id = mitsu.id
		bad.save

		counter = mitsu.goods.count - mitsu.bads.count
		if counter <= 0
			mitsu.update(level: 1)
		elsif counter <= 1
			mitsu.update(level: 2)
		elsif counter <= 2
			mitsu.update(level: 3)
		elsif counter <= 3
			mitsu.update(level: 4)
		elsif counter > 4
			mitsu.update(level: 5)
		end

		redirect_to request.referer
	end

end
