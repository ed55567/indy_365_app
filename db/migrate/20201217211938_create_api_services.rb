class CreateApiServices < ActiveRecord::Migration[6.0]
  def change
    create_table :api_services do |t|

      t.timestamps
    end
  end
end
