class AddColunRefToComments < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :commenter, :string
  end
end
