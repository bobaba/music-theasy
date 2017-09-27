class CreateLyrics < ActiveRecord::Migration[5.0]
  def change
    create_table :lyrics do |t|
      t.string :title
      t.string :author
      t.text :words

      t.timestamps
    end
  end
end
