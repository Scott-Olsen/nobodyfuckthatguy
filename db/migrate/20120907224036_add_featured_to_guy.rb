class AddFeaturedToGuy < ActiveRecord::Migration
  def change
    add_column :guys, :featured, :boolean
  end
end
