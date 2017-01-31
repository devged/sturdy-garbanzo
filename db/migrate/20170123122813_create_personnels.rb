class CreatePersonnels < ActiveRecord::Migration[5.0]
  def change
    create_table :personnels do |t|
      t.references :position, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.datetime :DOB

      t.timestamps
    end
  end
end
