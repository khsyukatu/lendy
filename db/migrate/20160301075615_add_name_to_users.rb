class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :user_profiles, :name, :string
    add_column :user_profiles, :name2, :string
    add_column :user_profiles, :yomi, :string
    add_column :user_profiles, :yomi2, :string
    add_column :user_profiles, :tel, :string
    add_column :user_profiles, :zipcode, :string
    add_column :user_profiles, :prefecture, :string
    add_column :user_profiles, :city, :string
    add_column :user_profiles, :apartment, :string
    add_column :user_profiles, :birthday, :date
    
    remove_column :user_profiles, :school_name
    remove_column :user_profiles, :school_type
    remove_column :user_profiles, :school_department
    remove_column :user_profiles, :school_status
  end
end
