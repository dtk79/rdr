class CreateQueens < ActiveRecord::Migration
  def change
    create_table :queens do |t|
      t.string :name
      t.string :bio
      t.string :city
      t.string :image

      t.timestamps null: false
    end
  end
end
