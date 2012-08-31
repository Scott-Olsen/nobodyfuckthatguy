class AddAttachmentMugToGuy < ActiveRecord::Migration
  def self.up
    add_column :guys, :mug_file_name, :string
    add_column :guys, :mug_content_type, :string
    add_column :guys, :mug_file_size, :integer
    add_column :guys, :mug_updated_at, :datetime
  end

  def self.down
    remove_column :guys, :mug_file_name
    remove_column :guys, :mug_content_type
    remove_column :guys, :mug_file_size
    remove_column :guys, :mug_updated_at
  end
end
