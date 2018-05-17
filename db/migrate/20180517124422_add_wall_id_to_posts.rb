class AddWallIdToPosts < ActiveRecord::Migration[5.1]
  def change
    add_reference :posts, :wall_id, foreign_key: { to_table: :users }
  end
end
