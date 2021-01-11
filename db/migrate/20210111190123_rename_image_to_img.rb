class RenameImageToImg < ActiveRecord::Migration[6.0]
  def change
    rename_column :aliens, :image, :img 
  end
end
