class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :first_name
      t.string :last_name
      t.string :license_no
      t.string :email
      t.string :phone_number

      t.timestamps null: false
    end
  end
end
