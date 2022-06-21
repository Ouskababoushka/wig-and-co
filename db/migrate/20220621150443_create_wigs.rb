class CreateWigs < ActiveRecord::Migration[6.1]
  def change
    create_table :wigs do |t|
      t.string :name
      t.string :color
      t.string :shape
      t.text :description
      t.integer :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
