class AddUuidToMentors < ActiveRecord::Migration[6.0]
  def change
    add_column :mentors, :uuid, :string
  end
end
