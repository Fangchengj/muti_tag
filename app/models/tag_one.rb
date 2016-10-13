class TagOne < ApplicationRecord
  has_many :tag_twos
  has_many :articles
end
