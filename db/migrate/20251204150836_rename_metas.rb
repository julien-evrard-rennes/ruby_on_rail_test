class RenameMetas < ActiveRecord::Migration[8.1]
  def change
    rename_table :metas, :meta
  end
end
