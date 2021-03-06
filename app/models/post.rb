class Post < ActiveRecord::Base
  has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/no_profile.jpg"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
  belongs_to :user
  has_many  :comments
end
