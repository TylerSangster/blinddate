class Category < ActiveRecord::Base
  has_many :activities

  validates :name, uniqueness: true, presence: true

end
