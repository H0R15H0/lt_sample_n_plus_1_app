class CreateUsersTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :users_tasks do |t|
      t.references :user, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true
      t.text :task
      t.integer :time_required

      t.timestamps
    end
  end
end
