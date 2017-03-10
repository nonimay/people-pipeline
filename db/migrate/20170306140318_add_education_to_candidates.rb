class AddEducationToCandidates < ActiveRecord::Migration[5.0]
  def change
    add_reference :candidates, :education, foreign_key: true
  end
end
