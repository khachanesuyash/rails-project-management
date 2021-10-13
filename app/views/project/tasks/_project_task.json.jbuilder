json.extract! project_task, :id, :title, :description, :start_date, :end_date, :story_point, :priority, :due_date, :status, :task_type, :project_id, :user_id, :phase_id, :created_at, :updated_at
json.url project_task_url(project_task, format: :json)
