class AddStatusToStudyItems < ActiveRecord::Migration[6.0]
  def change
    add_column :study_items, :status, :string
  end
end
