class CreateRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :requests do |t|
      t.string :fname
      t.string :lname
      t.text :email
      t.string :phone
      t.string :address
      t.string :city
      t.string :zipcode
      t.string :servicetype
      t.text :servicedescription

      t.timestamps
    end
  end
end
