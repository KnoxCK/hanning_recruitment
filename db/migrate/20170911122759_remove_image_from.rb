class RemoveImageFrom < ActiveRecord::Migration[5.0]
  def change
    remove_column :news, :image
  end
end
