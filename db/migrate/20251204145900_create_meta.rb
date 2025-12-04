class CreateMeta < ActiveRecord::Migration[8.1]
  def change
    create_table :metas do |t|
      t.string :name
      t.references :metatable, polymorphic: true, index: true
    end
  end
end
