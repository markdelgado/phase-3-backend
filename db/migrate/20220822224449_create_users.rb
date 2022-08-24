class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :pet_type
      t.string :pet_name

      t.timestamps
    end
  end
end
