class AddCompletedToProposals < ActiveRecord::Migration
  def change
    add_column :proposals, :completed, :datetime
  end
end
