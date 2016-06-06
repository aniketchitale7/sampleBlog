class CreateProfiles < ActiveRecord::Migration
  def change

    create_table :profiles do |t|
      t.text :Firstname
      t.text :LastName
      t.text :Gender
      t.text :dateofbirth
      t.text :phone
      t.text :email
      t.timestamps null: false
    end
  end
end
