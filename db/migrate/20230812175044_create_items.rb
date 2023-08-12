class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :title, null: false
      t.string :description, null: false, default: ""
      t.string :body
      t.integer :quantity, null: false, default: 1
      t.decimal :price, null: false, scale: 2, precision: 8
      t.belongs_to :category, null: false, foreign_key: true, index: true

      t.timestamps
    end
  end
end
