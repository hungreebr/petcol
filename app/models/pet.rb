class Pet < ActiveRecord::Base
  mount_uploader :pet_image, ImageUploader
attr_accessor :crop_x, :crop_y, :crop_w, :crop_h
attr_accessible :crop_x, :crop_y, :crop_w, :crop_h
  attr_accessible :birthday, :breed, :description, :gender, :hobbies, :name, :photo, :animal, :user_id, :pet_image
  belongs_to :user
  after_update :crop_avatar
  
  def crop_avatar
    if crop_x.present?
      mini_magick = MiniMagick::Image.open(self.image.large.path)
      crop_params = "#{crop_w}x#{crop_h}+#{crop_x}+#{crop_y}"
      mini_magick.crop(crop_params)
      mini_magick.write(self.image.path)
      image.recreate_versions!
    end
  end
end