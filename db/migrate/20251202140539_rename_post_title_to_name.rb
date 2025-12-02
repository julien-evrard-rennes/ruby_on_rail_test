class RenamePostTitleToName < ActiveRecord::Migration[8.1]
  def change
    change_table :posts do |t|
      t.rename :title, :name
    end
  end
end
