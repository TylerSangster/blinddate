class Activity < ActiveRecord::Base
  belongs_to :category
  has_many :likes

  validates :name, uniqueness: true, presence: true
  validates :category_id, presence: true
end
