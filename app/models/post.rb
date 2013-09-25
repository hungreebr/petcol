class Post < ActiveRecord::Base
  belongs_to :pet, :foreign_key => "pet_id"
  belongs_to :user, :foreign_key => "user_id"
  attr_accessible :author, :pet, :picture, :story, :pet_id, :user_id
end
