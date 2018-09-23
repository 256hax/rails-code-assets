class CreateInboxes < ActiveRecord::Migration[5.2]
  def change
    create_table :inboxes do |t|
      t.string :name
      t.string :email
      t.text :body

      t.timestamps
    end
  end
end
