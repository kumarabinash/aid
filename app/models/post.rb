class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :sub_category
  has_many :replies
end
