class Stat < ActiveRecord::Base
	belongs_to :character
	mount_uploader :avatar, AvatarUploader
end
