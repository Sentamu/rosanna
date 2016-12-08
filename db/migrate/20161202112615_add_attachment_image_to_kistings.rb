class AddAttachmentImageToKistings < ActiveRecord::Migration
  def self.up
    change_table :kistings do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :kistings, :image
  end
end
