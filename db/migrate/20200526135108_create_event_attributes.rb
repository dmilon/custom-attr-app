class CreateEventAttributes < ActiveRecord::Migration[6.0]
  def change
    create_table :event_attributes do |t|
      t.string :name
      t.boolean :required, default: false
      t.string :data_type

      t.timestamps
    end
  end
end
