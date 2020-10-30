class RemoveUniqueConstraintFromUsernameIndex < ActiveRecord::Migration[6.0]
  def change
    remove_index :mentors, name: :index_mentors_on_username
    add_index :mentors, :username
  end
end
