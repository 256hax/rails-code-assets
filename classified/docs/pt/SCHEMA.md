# Active Record
## pry(main)> show-models
```
ApplicationRecord
  Table doesn't exist
Pt::Event
  id: integer
  name: string
  the_date: date
  title: string
  comment: text
  area: string
  image: string
  pt_trainer_id: integer
  created_at: datetime
  updated_at: datetime
  belongs_to :pt_trainer (class_name :Pt::Trainer)
  has_many :pt_members (through :pt_participations, class_name :Pt::Member)
  has_many :pt_participations (class_name :Pt::Participation, foreign_key :pt_event_id)
Pt::Member
  id: integer
  name: string
  birthdate: date
  sex: integer
  email: string
  title: string
  comment: text
  area: string
  created_at: datetime
  updated_at: datetime
  image: string
  has_many :pt_events (through :pt_participations, class_name :Pt::Event)
  has_many :pt_participations (class_name :Pt::Participation, foreign_key :pt_member_id)
Pt::Participation
  id: integer
  pt_event_id: integer
  pt_member_id: integer
  created_at: datetime
  updated_at: datetime
  belongs_to :pt_event (class_name :Pt::Event)
  belongs_to :pt_member (class_name :Pt::Member)
Pt::Trainer
  id: integer
  name: string
  birthdate: date
  sex: integer
  email: string
  title: string
  comment: text
  area: string
  created_at: datetime
  updated_at: datetime
  image: string
  has_many :pt_events (class_name :Pt::Event, foreign_key :pt_trainer_id)
```
