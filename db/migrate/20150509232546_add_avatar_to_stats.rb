class AddAvatarToStats < ActiveRecord::Migration
  def change
    add_column :stats, :avatar, :string
  end
end
