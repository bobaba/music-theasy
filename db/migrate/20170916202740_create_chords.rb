class CreateChords < ActiveRecord::Migration[5.0]
  def change
    create_table :chords do |t|
      t.string :chord_name
      t.string :formula

      t.timestamps
    end
  end
end
