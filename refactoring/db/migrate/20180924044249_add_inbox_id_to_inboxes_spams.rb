class AddInboxIdToInboxesSpams < ActiveRecord::Migration[5.2]
  def change
    add_column :inboxes_spams, :inbox_id, :integer
  end
end
# $ rails g migration add_inbox_id_to_inboxes_spams inbox_id:integer
