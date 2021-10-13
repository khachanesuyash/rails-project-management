class AddCommentsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.text :body
      t.references :user, null: false, foreign_key: true
      t.references :task, null: false, foreign_key: true
      
      t.timestamps
    end
    
  end
end
