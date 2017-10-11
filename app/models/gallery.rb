class Gallery < ApplicationRecord
  belongs_to :user
  belongs_to :product

  has_attached_file :cover, styles: { medium: "1000x1000>", large: "2000x2000>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :cover, content_type: /\Aimage\/.*\z/
end
