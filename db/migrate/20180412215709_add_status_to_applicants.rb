class AddStatusToApplicants < ActiveRecord::Migration[5.1]
  def change
    add_column :applicants, :status, :integer, default: 0
  end
end
