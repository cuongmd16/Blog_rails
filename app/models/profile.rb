class Profile < ApplicationRecord
	belongs_to :user
	validates :full_name, presence: true
	validates :birthday, presence: true
	validates :phone, presence: true
	validates :address, presence: true
	validates :interests, presence: true
	validates :user_id, presence: true
end
