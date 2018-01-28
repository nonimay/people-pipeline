class CreateCandidates < ActiveRecord::Migration[5.0]
  def change
    create_table :candidates do |t|
      t.string :name
      t.string :geo_location
      t.string :telephone
      t.string :email
      t.string :street
      t.string :city
      t.string :county
      t.string :country
      t.string :postcode

      t.timestamps
    end
  end
end
