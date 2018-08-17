# Active Record
## Relational
pt_trainers 1-n pt_events 1-n pt_event_member n-1 pt_members

## Associations
### pt_trainers
- has_many	  :pt_events

### pt_events
- belongs_to	:pt_trainer
- has_many	  :pt_event_member
- has_many    :pt_members,  :through => :pt_event_member

### pt_event_member
- belongs_to	:pt_event
- belongs_to	:pt_member

### pt_members
- has_many	  :pt_event_membe
- has_many    :pt_events,   :through => :pt_events
