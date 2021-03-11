class AddCategoryRefToStudyItem < ActiveRecord::Migration[6.0]
  def change
    add_reference :study_items, :category,foreign_key: true
  end
end
