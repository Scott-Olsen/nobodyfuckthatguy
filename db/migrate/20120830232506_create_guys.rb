class CreateGuys < ActiveRecord::Migration
  def change
    create_table :guys do |t|
      t.string :name
      t.text :story
      t.integer :up_votes
      t.integer :down_votes

      t.timestamps
    end
  end
end
