class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.datetime :date
      t.string :title
      t.text :description
      t.string :location
      t.integer :creator_id
      # t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
