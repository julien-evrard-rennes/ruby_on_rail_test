class Post < ApplicationRecord
  include Sluggable

  # validates :title, presence: { message: "Holala mais il manque un titre !" }

  # validates :slug, format: { with: /\A[a-z0-9\-]+\z/ }, uniqueness: true

  # default_scope { order(created_at: :desc) }

  scope :online,   ->(online) { where(online: online) }
  scope :alpha,    -> { order(title: :asc) }

  def as_json(options = nil)
    super(only: [ :title, :created_at, :id ])
  end
end
