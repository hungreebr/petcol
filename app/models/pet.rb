class Pet < ActiveRecord::Base
  mount_uploader :pet_image, ImageUploader
  attr_accessible :birthday, :breed, :description, :gender, :hobbies, :name, :photo, :animal, :user_id, :pet_image
  belongs_to :user
  has_many :posts
  


end