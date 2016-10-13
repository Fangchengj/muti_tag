class Article < ApplicationRecord
  belongs_to :tag_one
  belongs_to :tag_two
end
