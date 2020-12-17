class CreateServices < ActiveRecord::Migration[6.0]
  def change
    create_table :services do |t|
      t.integer :service_id
      t.string :name
      t.text :address
      t.string :city
      t.string :county
      t.integer :phone
      t.string :website
      t.string :email
      t.string :languages
      t.text :description
      t.boolean :transportation
      t.float :latitude
      t.float :longitude
      t.boolean :accessibility_for_disabilities

      t.timestamps
    end
  end
end
