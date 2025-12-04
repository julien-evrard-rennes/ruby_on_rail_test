class Post < ApplicationRecord
  validates :title, title: { message: "Holala mais il manque un titre !" }

  validates :content, title: true

  # uniqueness: { case_sensitive: false, message: "doit être unique" }

  def as_json(options = nil)
    super(only: [ :title, :created_at, :id ])
  end
end
