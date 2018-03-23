class CreateCupcakes < ActiveRecord::Migration[5.1]
  def change
    create_table :cupcakes do |t|
      t.string :name
      t.string :description
      t.float :price
      t.string :image
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
