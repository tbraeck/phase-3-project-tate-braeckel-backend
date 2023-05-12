class AddForeignKeyToDrawings < ActiveRecord::Migration[6.1]
  def change
add_column :drawings, :user_id, :integer

  end
end
