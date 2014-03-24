class AddEmbargoDateToRelease < ActiveRecord::Migration
  def change
    add_column :releases, :embargo_date, :date
  end
end
