class CreateNews < ActiveRecord::Migration[5.0]
  def change
    create_table :news do |t|
      t.string :title
      t.date :date
      t.string :photo
      t.text :body

      t.timestamps
    end
  end
end
