class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :loyalty_points
      t.string :email
      t.boolean :admin
      t.string :password_digest

      t.timestamps
    end
  end
end
