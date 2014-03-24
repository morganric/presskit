class AddViewsToRelease < ActiveRecord::Migration
  def change
    add_column :releases, :views, :integer, :default => 0
  end
end
