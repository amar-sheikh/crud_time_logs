class CreateTimeLog < ActiveRecord::Migration[6.1]
  def change
    create_table :time_logs do |t|
      t.integer :duration_hours
      t.text :description
      t.string :status

      t.timestamps
    end
    add_index :time_logs, :status
  end
end
