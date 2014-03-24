class CreateUserReleases < ActiveRecord::Migration
  def change
    create_table :user_releases do |t|
      t.integer :user_id,  :null => false
      t.integer :release_id,  :null => false

      t.timestamps
    end
  end
end
