class PassengerVehicle < ActiveRecord::Base
  mount_uploader :image, AvatarUploader
  has_many :features
end
