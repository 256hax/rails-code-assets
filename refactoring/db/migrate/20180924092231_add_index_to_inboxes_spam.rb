class AddIndexToInboxesSpam < ActiveRecord::Migration[5.2]
  def change
    add_index :inboxes_spams, :inbox_id, :unique => true
    # reference: http://railsdoc.com/references/add_index
  end
end
# $ rails g migration add_index_to_inboxes_spam
