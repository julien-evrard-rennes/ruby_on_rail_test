class Post < ApplicationRecord
  def as_json(options = nil)
  super(only: [ :title, :created_at, :id ])
  end
end
