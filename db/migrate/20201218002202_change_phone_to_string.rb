class ChangePhoneToString < ActiveRecord::Migration[6.0]
  def change
    change_column :services, :phone, :string
  end
end
