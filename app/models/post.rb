class Post < ActiveRecord::Base
 has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
 validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
 belongs_to:user
 has_many :comments
 has_many :likes
end
