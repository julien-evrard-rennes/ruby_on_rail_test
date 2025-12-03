class CreateCategoriesTable < ActiveRecord::Migration[8.1]
  def change
    create_table :categories do |t|
      t.string :label
      t.text :content

      t.timestamps
    end
  end
end
