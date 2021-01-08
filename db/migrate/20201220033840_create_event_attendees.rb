class CreateEventAttendees < ActiveRecord::Migration[6.0]
  def change
    create_table :event_attendees do |t|
      t.references :attendee, null: false, foreign_key: { to_table: :users }, index: true
      t.references :enrolled_event, null: false, foreign_key: { to_table: :events }, index: true

      t.timestamps
    end
  end
end
