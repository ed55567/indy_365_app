class AddZipCodeToString < ActiveRecord::Migration[6.0]
  def change
    add_column :services, :zipcode, :string
  end
end
