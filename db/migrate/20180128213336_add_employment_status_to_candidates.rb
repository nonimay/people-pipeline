class AddEmploymentStatusToCandidates < ActiveRecord::Migration[5.0]
  def change
    add_reference :candidates, :employment_status, foreign_key: true
  end
end
