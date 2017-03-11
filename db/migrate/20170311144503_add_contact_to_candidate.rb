class AddContactToCandidate < ActiveRecord::Migration[5.0]
  def change
    add_reference :candidates, :contact, foreign_key: true
  end
end
