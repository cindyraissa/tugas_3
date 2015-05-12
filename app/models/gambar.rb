class Gambar < ActiveRecord::Base
  validates :title, presence: true

  has_attached_file :nama_gambar, :styles => {:medium => "400x200>", :thumb => "200x100>", :default_url => ""}
  validates_attachment_content_type :nama_gambar, :content_type => /\Aimage\/.*\Z/
  validates_attachment_size :nama_gambar, :less_than => 200.kilobytes
end
