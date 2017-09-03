class CreateLiveRoles < ActiveRecord::Migration[5.0]
  def change
    create_table :live_roles do |t|
      t.string :title
      t.string :sector
      t.string :salary
      t.string :package
      t.string :company
      t.string :location
      t.text :role
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
