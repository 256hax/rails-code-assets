json.extract! pt_member, :id, :name, :birthdate, :sex, :email, :title, :comment, :area, :created_at, :updated_at
json.url pt_member_url(pt_member, format: :json)
