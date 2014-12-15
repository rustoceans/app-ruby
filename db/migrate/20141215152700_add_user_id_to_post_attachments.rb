class AddUserIdToPostAttachments < ActiveRecord::Migration
  def change
    add_reference :post_attachments, :user, index: true
  end
end
