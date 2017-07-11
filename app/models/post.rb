class Post < ApplicationRecord
  belongs_to :user
  has_attached_file :post_image, styles: { medium: "300x300>" }
  validates_attachment_content_type :post_image, content_type: /\Aimage\/.*\z/
end
