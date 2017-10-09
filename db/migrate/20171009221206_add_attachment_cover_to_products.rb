class AddAttachmentCoverToProducts < ActiveRecord::Migration[5.1]
  def self.up
    change_table :products do |t|
      t.attachment :cover
    end
  end

  def self.down
    remove_attachment :products, :cover
  end
end
