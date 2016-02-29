class CreateBorrowConditions < ActiveRecord::Migration
  def change
    create_table :borrow_conditions do |t|
      t.string :bank
      t.integer :amount
      t.integer :rate_type
      t.float :rate
      t.references :user, index: true

      t.timestamps
    end
  end
end
