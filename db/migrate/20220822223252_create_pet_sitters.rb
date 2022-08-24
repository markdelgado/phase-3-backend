class CreatePetSitters < ActiveRecord::Migration[7.0]
  def change
    create_table :pet_sitters do |t|
      t.string :name
      t.string :location
      t.integer :rating
      t.string :img_url

      t.timestamps
    end
  end
end
