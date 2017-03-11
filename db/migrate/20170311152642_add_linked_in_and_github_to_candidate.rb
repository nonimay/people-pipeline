class AddLinkedInAndGithubToCandidate < ActiveRecord::Migration[5.0]
  def change
    add_column :candidates, :linkedin, :string
    add_column :candidates, :github, :string
  end
end
