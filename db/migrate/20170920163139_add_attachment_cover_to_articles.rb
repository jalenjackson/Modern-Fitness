class AddAttachmentCoverToArticles < ActiveRecord::Migration[5.1]
  def self.up
    change_table :articles do |t|
      t.attachment :cover
    end
  end

  def self.down
    remove_attachment :articles, :cover
  end
end
