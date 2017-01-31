class CreateAttdata < ActiveRecord::Migration[5.0]
  def change
    create_table :attdata do |t|
      t.references :personnel, foreign_key: true
      t.references :season, foreign_key: true
      t.references :rateable, foreign_key: true

      t.timestamps
    end
  end
end
