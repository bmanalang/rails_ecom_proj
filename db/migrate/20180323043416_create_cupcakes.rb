class CreateCupcakes < ActiveRecord::Migration[5.1]
  def change
    create_table :cupcakes do |t|
      t.string :name, null: false
      t.string :description
      t.float :price, null: false, precision: 15, scale: 2
      t.string :image
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
