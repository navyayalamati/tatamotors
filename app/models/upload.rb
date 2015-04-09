class Upload < ActiveRecord::Base
  mount_uploader :file,  AvatarUploader
  mount_uploader :file_type,  AvatarUploader
  
end
