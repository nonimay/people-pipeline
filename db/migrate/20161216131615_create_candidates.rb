class CreateCandidates < ActiveRecord::Migration[5.0]
  def change
    create_table :candidates do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :geo_location

      t.timestamps
    end
  end
end
