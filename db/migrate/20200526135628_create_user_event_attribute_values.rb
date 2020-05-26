class CreateUserEventAttributeValues < ActiveRecord::Migration[6.0]
  def change
    create_table :user_event_attribute_values do |t|
      t.string :value
      t.references :user_event_registration, null: false, foreign_key: true
      t.references :event_attribute, null: false, foreign_key: true

      t.timestamps
    end
  end
end
