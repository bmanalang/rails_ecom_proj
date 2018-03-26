class CreateAbouts < ActiveRecord::Migration[5.1]
  def change
    create_table :abouts do |t|
      t.string :description
      t.string :address
      t.string :telephone
      t.string :email

      t.timestamps
    end
  end
end
