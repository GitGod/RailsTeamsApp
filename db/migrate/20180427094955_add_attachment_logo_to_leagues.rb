class AddAttachmentLogoToLeagues < ActiveRecord::Migration[5.0]
  def self.up
    change_table :leagues do |t|
      t.attachment :logo
    end
  end

  def self.down
    remove_attachment :leagues, :logo
  end
end
