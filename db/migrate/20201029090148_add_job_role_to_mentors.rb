class AddJobRoleToMentors < ActiveRecord::Migration[6.0]
  def change
    add_column :mentors, :job_role, :string
  end
end
