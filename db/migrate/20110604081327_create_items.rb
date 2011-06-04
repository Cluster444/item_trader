class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.references :inventory
      t.string :title

      t.timestamps
    end
    add_index :items, :inventory_id
  end
end
