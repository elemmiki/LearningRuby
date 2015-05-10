class Character < ActiveRecord::Base
	has_many :stats, dependent: :destroy
	belongs_to :user
	mount_uploader :avatar, AvatarUploader
end
