class Pet < ActiveRecord::Base
  attr_accessible :birthday, :breed, :description, :gender, :hobbies, :name, :photo, :animal, :user_id
  attr_accessible :avatar
  belongs_to :user
    has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
end
