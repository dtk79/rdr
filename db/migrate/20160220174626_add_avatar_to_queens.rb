class AddAvatarToQueens < ActiveRecord::Migration
  def change
    add_column :queens, :avatar, :string
  end
end
