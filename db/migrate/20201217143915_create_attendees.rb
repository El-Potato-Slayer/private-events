class CreateAttendees < ActiveRecord::Migration[6.0]
  def change
    create_table :attendees do |t|
        t.integer :users
        t.integer :events
      t.timestamps
    end
  end
end
