json.extract! schedule, :id, :studentId, :eventName, :description, :created_at, :updated_at
json.url schedule_url(schedule, format: :json)