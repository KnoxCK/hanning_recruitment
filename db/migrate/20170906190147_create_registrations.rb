class CreateRegistrations < ActiveRecord::Migration[5.0]
  def change
    create_table :registrations do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :cv

      t.timestamps
    end
  end
end
