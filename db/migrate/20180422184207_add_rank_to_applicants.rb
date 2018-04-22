class AddRankToApplicants < ActiveRecord::Migration[5.1]
  def change
    add_column :applicants, :rank, :integer
  end
end
