class AddCheckdeadlinesToStudyItem < ActiveRecord::Migration[6.0]
  def change
    add_column :study_items, :deadline, :date
    add_column :study_items, :check_date, :datetime
  end
end
