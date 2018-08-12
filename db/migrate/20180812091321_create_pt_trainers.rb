class CreatePtTrainers < ActiveRecord::Migration[5.2]
  def change
    create_table :pt_trainers do |t|
      t.string :name
      t.date :birthdate
      t.integer :sex
      t.string :email
      t.string :title
      t.text :comment
      t.string :area

      t.timestamps
    end
  end
end
