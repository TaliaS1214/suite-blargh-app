class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :author
      t.string :title
      t.string :mood
      t.text :content
      t.timestamps
    end
  end
end
