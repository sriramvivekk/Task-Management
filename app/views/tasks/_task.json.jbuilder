json.extract! task, :id, :name, :status, :project_id, :created_at, :updated_at
json.url task_url(task, format: :json)
