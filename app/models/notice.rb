class Notice < ActiveRecord::Base
  attr_accessible :icon, :text, :title
  validates :text, length: { maximum: 100 }
end
