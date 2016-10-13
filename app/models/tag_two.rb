class TagTwo < ApplicationRecord
  belongs_to :tag_one
  has_many :articles
end
