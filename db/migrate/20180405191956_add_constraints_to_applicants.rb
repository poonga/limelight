class AddConstraintsToApplicants < ActiveRecord::Migration[5.1]
  def change
    change_column_null :applicants, :email, false
    change_column_null :applicants, :resume_file_name, false
    change_column_null :applicants, :resume_content_type, false
    change_column_null :applicants, :resume_file_size, false
    change_column_null :applicants, :resume_updated_at, false
  end
end
