class CreatePtParticipations < ActiveRecord::Migration[5.2]
  def change
    create_table :pt_participations do |t|
      t.references :pt_event, foreign_key: true
      t.references :pt_member, foreign_key: true

      t.timestamps
    end
  end
end
# $ rails g scaffold pt::participation pt_event:references pt_member:references
