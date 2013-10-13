class Pet < ActiveRecord::Base
  attr_accessible :birthday, :breed, :description, :gender, :hobbies, :name, :photo, :animal, :user_id, :pet_image, :profilepic
  belongs_to :user
  has_many :posts
  has_attached_file :profilepic
  


end