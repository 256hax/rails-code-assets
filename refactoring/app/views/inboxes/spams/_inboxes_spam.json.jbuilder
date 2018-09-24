json.extract! inboxes_spam, :id, :spam_flag, :created_at, :updated_at
json.url inboxes_spam_url(inboxes_spam, format: :json)
