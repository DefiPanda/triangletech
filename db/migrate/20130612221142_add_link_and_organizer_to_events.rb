class AddLinkAndOrganizerToEvents < ActiveRecord::Migration
  def change
    add_column :events, :link, :string
    add_column :events, :organizer, :string
  end
end
