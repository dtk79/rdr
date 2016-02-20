class AddTwitterToQueens < ActiveRecord::Migration
  def change
    add_column :queens, :twitter, :string
  end
end
