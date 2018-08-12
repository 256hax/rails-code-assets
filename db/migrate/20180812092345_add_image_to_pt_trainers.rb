class AddImageToPtTrainers < ActiveRecord::Migration[5.2]
  def change
    add_column :pt_trainers, :image, :string
  end
end
# $ rails g migration AddImageToPtTrainers image:string
# 参考URL: https://qiita.com/Inp/items/cc447237e23bf10d159e
