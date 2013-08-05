class Like < ActiveRecord::Base
  belongs_to :activity
  belongs_to :user

  validates :user_id, presence: true
  validates :category_id, presence: true
end
