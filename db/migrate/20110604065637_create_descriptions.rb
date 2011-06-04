class CreateDescriptions < ActiveRecord::Migration
  def change
    create_table :descriptions do |t|
      t.references :describable, :polymorphic => true
      t.text :body

      t.timestamps
    end
  end
end
