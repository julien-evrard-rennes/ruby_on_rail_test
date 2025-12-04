class Meta < ApplicationRecord
  belongs_to :metatable, polymorphic: true
end
