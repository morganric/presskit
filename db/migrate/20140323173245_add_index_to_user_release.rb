class AddIndexToUserRelease < ActiveRecord::Migration
  def change
  	add_index :user_releases, [:user_id, :release_id]
  end
end
