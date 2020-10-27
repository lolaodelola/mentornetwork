class AddBookingLinkToMentors < ActiveRecord::Migration[6.0]
  def change
    add_column :mentors, :booking_url, :string, default: ''
  end
end
