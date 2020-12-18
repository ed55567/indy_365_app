class AddServiceTypeText < ActiveRecord::Migration[6.0]
  def change
    add_column :services, :service_type, :text
  end
end
