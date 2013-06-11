class CreateMenuItems < ActiveRecord::Migration
  def change
    create_table :menu_items do |t|
      t.string :category
      t.string :name
      t.integer :price
      t.string :description

      t.timestamps
    end
  end
end
