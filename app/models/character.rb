class Character < ActiveRecord::Base
	has_many :stats, dependent: :destroy
	mount_uploader :avatar, AvatarUploader
end
