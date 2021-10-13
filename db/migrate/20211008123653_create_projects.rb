class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.string :status
      t.date :due_date
      t.string :phase_ids

      t.timestamps
    end
  end
end
