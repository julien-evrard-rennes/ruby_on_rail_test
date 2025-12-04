class Category < ApplicationRecord
  has_many :posts
  has_many :metas, as: :metatable
end
