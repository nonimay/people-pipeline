class AddPipelineStatusToCandidates < ActiveRecord::Migration[5.0]
  def change
    add_reference :candidates, :pipeline_status, foreign_key: true
  end
end
