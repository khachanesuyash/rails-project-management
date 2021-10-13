class CreateTaskComments < ActiveRecord::Migration[6.1]
  def change
    create_table :task_comments do |t|
      t.text :body
      t.references :task, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
