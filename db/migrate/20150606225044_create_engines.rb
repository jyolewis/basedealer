class CreateEngines < ActiveRecord::Migration
  def change
    create_table :engines do |t|
      t.string :name
      t.decimal :price
      t.text :description

      t.timestamps
    end
  end
end
