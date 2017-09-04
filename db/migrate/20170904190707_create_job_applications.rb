class CreateJobApplications < ActiveRecord::Migration[5.0]
  def change
    create_table :job_applications do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.references :live_role, foreign_key: true
      t.string :cv

      t.timestamps
    end
  end
end
