class Post < ApplicationRecord
  include Sluggable
  belongs_to :category, counter_cache: true
  has_and_belongs_to_many :tags
  has_many :metas, as: :metatable

  # default_scope { order(created_at: :desc) }

  scope :online,   ->(online) { where(online: online) }
  scope :alpha,    -> { order(title: :asc) }

  def as_json(options = nil)
    super(only: [ :title, :created_at, :id ])
  end
end
