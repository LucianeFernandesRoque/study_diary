class AddStudyItemRefToComment < ActiveRecord::Migration[6.0]
  def change
    add_reference :comments, :study_item, foreign_key: true
  end
end
