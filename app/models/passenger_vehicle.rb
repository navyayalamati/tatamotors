class PassengerVehicle < ActiveRecord::Base
  mount_uploader :image, AvatarUploader
end
