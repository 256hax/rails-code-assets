class CreatePtEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :pt_events do |t|
      t.string :name
      t.date :the_date
      t.string :title
      t.text :comment
      t.string :area
      t.string :image
      t.belongs_to :pt_trainer, foreign_key: true

      t.timestamps
    end
  end
end
# $ rails g scaffold pt::event name:string the_date:date title:string comment:text area:string pt_trainer:belongs_to
