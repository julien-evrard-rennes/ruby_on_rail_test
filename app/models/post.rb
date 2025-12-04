class Post < ApplicationRecord
  include Sluggable

  validates :title, presence: { message: "Holala mais il manque un titre !" }

  validates :slug, format: { with: /\A[a-z0-9\-]+\z/ }, uniqueness: true

  def as_json(options = nil)
    super(only: [ :title, :created_at, :id ])
  end
end
