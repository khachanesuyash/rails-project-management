json.extract! task_subtask, :id, :title, :status, :task_id, :created_at, :updated_at
json.url task_subtask_url(task_subtask, format: :json)
