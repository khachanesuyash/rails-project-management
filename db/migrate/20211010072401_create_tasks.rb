class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.date :start_date
      t.date :end_date
      t.decimal :story_point
      t.string :priority
      t.date :due_date
      t.string :status
      t.string :task_type
      t.references :project, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :phase, null: false, foreign_key: true

      t.timestamps
    end
  end
end
