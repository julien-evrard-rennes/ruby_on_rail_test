class AddOnlineToPosts < ActiveRecord::Migration[8.1]
  def change
    add_column :posts, :online, :boolean, default: false
  end
end
