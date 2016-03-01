class CreateSchoolProfiles < ActiveRecord::Migration
  def change
    create_table :school_profiles do |t|
      t.string :name
      t.string :department
      t.date :graduation
      t.references :user, index: true

      t.timestamps
    end
  end
end
