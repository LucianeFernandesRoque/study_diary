class CreateStudyItems < ActiveRecord::Migration[6.0]
  def change
    create_table :study_items do |t|
      t.string :title
      t.string :category
      t.text :description

      t.timestamps
    end
  end
end
