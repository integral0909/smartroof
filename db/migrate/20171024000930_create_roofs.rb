class CreateRoofs < ActiveRecord::Migration[5.1]
  def change
    create_table :roofs do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :address
      t.string :latitude
      t.string :longitude
      t.integer :area
      t.string :slope
      t.string :estimation
      t.integer :quotes, default: 0

      t.index :name
      t.index :email
      t.index :address

      t.timestamps
    end
  end
end
