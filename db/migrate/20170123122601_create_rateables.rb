class CreateRateables < ActiveRecord::Migration[5.0]
  def change
    create_table :rateables do |t|
      t.string :rateable
      t.decimal :rating

      t.timestamps
    end
  end
end
