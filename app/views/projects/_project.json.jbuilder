json.extract! project, :id, :title, :description, :status, :due_date, :phase, :created_at, :updated_at
json.url project_url(project, format: :json)
