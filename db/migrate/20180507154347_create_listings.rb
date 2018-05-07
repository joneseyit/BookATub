class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.integer :host_id
      t.string :name
      t.string :picture
      t.text :description
      t.string :location

      t.timestamps
    end
  end
end
