class Recipe < ApplicationRecord
    has_many :ingredients, inverse_of: :recipe
    accepts_nested_attributes_for :ingredients, reject_if: :all_blank, allow_destroy: true

    has_many :directions, inverse_of: :recipe
    accepts_nested_attributes_for :directions, reject_if: :all_blank, allow_destroy: true

    validates :title, :category, :image, presence: true

    has_attached_file :image, styles: { large: "1000x1000>", medium: "500x500>", thumb: "100x100>" }
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
