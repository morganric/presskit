class AddToRelease < ActiveRecord::Migration
  def change
  	add_column :releases, :pdf_file_size, :integer
  	add_column :releases, :pdf_content_type, :string
  end
end
