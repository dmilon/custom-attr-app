class CreateUserAttributes < ActiveRecord::Migration[6.0]
  def change
    create_table :user_attributes do |t|
      t.string :name
      t.boolean :required, default: false
      t.string :data_type
      t.boolean :profile
      t.boolean :signup

      t.timestamps
    end
  end
end
