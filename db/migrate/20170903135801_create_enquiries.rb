class CreateEnquiries < ActiveRecord::Migration[5.0]
  def change
    create_table :enquiries do |t|
      t.string :name
      t.string :tel
      t.string :email
      t.text :body

      t.timestamps
    end
  end
end
