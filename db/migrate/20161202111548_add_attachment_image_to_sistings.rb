class AddAttachmentImageToSistings < ActiveRecord::Migration
  def self.up
    change_table :sistings do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :sistings, :image
  end
end
