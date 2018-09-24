class CreateInboxesSpams < ActiveRecord::Migration[5.2]
  def change
    create_table :inboxes_spams do |t|
      t.boolean :spam_flag

      t.timestamps
    end
  end
end
# $ rails g scaffold inboxes::spam spam_flag:boolean
