class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
      t.string :school_name
      t.integer :school_type
      t.string :school_department
      t.integer :school_status
      t.date :birthday
      t.references :user, index: true

      t.timestamps
    end
  end
end
