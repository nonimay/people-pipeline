class CreatePipelineStatuses < ActiveRecord::Migration[5.0]
  def change
    create_table :pipeline_statuses do |t|
      t.string :status

      t.timestamps
    end
  end
end
