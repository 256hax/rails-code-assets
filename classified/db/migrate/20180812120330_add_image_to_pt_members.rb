class AddImageToPtMembers < ActiveRecord::Migration[5.2]
  def change
    add_column :pt_members, :image, :string
  end
end
# $ rails g migration AddImageToPtMembers image:string
