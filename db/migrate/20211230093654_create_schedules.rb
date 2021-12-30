class CreateSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :schedules do |t|
      t.string      :company,           null: false
      t.integer     :interview_id,      null: false
      t.date        :dating,            null: false
      t.time        :start_time,        null: false
      t.time        :end_time,          null: false
      t.text        :memo
      t.timestamps
    end
  end
end
