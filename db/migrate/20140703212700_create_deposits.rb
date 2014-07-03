class CreateDeposits < ActiveRecord::Migration
  def change
    create_table :deposits do |t|
      t.integer :amount
      t.string :to
      t.string :from
      t.references :user, index: true

      t.timestamps
    end
  end
end
