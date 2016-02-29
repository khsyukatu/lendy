class CreateProposals < ActiveRecord::Migration
  def change
    create_table :proposals do |t|
      t.references :borrow_condition, index: true
      t.references :lender, index: true
      t.float :rate
      t.integer :rate_type
      t.integer :amount
      t.text :description
      t.boolean :choiced

      t.timestamps
    end
  end
end
