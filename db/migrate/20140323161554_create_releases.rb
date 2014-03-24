class CreateReleases < ActiveRecord::Migration
  def change
    create_table :releases do |t|
      t.string :title
      t.text :abstract
      t.string :pdf
      t.string :pdf_file_name

      t.timestamps
    end
  end
end
