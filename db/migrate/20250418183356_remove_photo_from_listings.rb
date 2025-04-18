class RemovePhotoFromListings < ActiveRecord::Migration[7.1]
  def change
    remove_column :listings, :photo, :string
  end
end
