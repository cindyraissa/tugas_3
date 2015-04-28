class AddGambarToGalery < ActiveRecord::Migration
  def change
    add_attachment :gambars, :nama_gambar
  end
end
