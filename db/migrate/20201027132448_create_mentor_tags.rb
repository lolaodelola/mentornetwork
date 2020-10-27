class CreateMentorTags < ActiveRecord::Migration[6.0]
  def change
    create_table :mentor_tags do |t|
      t.integer :mentor_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
