# Create your costume_stores migration here
class CreateCostumeStore < ActiveRecord::Migration[5.1]
  def change
    create_table :costume_store do |t|
      t.string :name
      t.string :location
      t.integer :costume_inventory
      t.integer :employee_count
      t.boolean :active_status
      t.time :opens_at
      t.time :closes_at
      t.timestamps :created_at
      t.timestamps :updated_at
    end
  end
end
