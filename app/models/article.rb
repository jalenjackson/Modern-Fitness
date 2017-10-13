class Article < ApplicationRecord

  acts_as_votable

  belongs_to :user
  has_attached_file :cover, styles: { medium: "400x400>", large: "2000x2000>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :cover, content_type: /\Aimage\/.*\z/

  validates :title, presence: true


end
