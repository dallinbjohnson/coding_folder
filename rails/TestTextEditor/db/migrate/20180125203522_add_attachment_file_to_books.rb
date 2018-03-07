class AddAttachmentFileToBooks < ActiveRecord::Migration[5.0]
  def self.up
    change_table :books do |t|
      t.attachment :file
    end
  end

  def self.down
    remove_attachment :books, :file
  end
end
