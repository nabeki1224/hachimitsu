class Mitsu < ApplicationRecord

	belongs_to :user

	scope :mitsu_index, -> {
		select(:id, :title, :content, :user_id).includes(:user)
	}

	validates :title, presence: true, length: { maximum: 20 }
	validates :content, presence: true, length: {maximum: 150}
end
