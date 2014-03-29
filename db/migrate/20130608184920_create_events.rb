class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.text :content
      t.date :date
      t.string :username

      t.timestamps
    end
  end
end
