json.extract! pt_event, :id, :name, :the_date, :title, :comment, :area, :image, :pt_trainer_id, :created_at, :updated_at
json.url pt_event_url(pt_event, format: :json)
