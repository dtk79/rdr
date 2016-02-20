class Queen < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
end
