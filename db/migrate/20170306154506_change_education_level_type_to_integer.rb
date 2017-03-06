class ChangeEducationLevelTypeToInteger < ActiveRecord::Migration[5.0]
  def change
    change_column :educations, :level, :integer
  end
end
