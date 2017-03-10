class AddQualificationToEducation < ActiveRecord::Migration[5.0]
  def change
    add_column :educations, :qualification, :string
  end
end
