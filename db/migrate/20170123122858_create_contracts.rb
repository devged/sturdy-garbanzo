class CreateContracts < ActiveRecord::Migration[5.0]
  def change
    create_table :contracts do |t|
      t.references :personnel, foreign_key: true
      t.datetime :start_date
      t.datetime :end_date
      t.decimal :wage

      t.timestamps
    end
  end
end
