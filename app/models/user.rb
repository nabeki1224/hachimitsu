class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :mitsus, dependent: :destroy
  has_one_attached :icon

  validates :name, presence: true, length: { in: 2..10 }

  scope :all_user, -> {
    select(:id, :name)
  }

end
