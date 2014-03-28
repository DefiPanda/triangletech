class AddTypeSiteAndTypeIdToEvents < ActiveRecord::Migration
  def change
  	add_column :events, :typesite, :int
    add_column :events, :typeid, :string
  end
end
