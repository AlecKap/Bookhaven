class AddSmThumbnailImgAndThumbnailImgToBooks < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :sm_thumbnail_img, :string
    add_column :books, :thumbnail_img, :string
  end
end
