class User < ActiveRecord::Base
  has_many :likes

  mount_uploader :photo, AvatarUploader

  has_secure_password

  validates :username, uniqueness: true, presence: true
  validates :name, presence: true
  validates :handle,  uniqueness: true, presence: true
  validates :sex, presence: true
  validates :age, presence: true
  validates :email, presence: true
  validates :photo, presence: true

end
