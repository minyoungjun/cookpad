class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_attached_file :profile, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/no_profile.jpg"
  validates_attachment_content_type :profile, content_type: /\Aimage\/.*\z/

  has_many  :posts
  has_many  :comments

end
