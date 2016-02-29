class CreateBusinessProfiles < ActiveRecord::Migration
  def change
    create_table :business_profiles do |t|
      t.integer :job_status
      t.string :company
      t.integer :job_type
      t.string :job_title
      t.integer :income
      t.references :user, index: true

      t.timestamps
    end
  end
end
