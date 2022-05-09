class Product < ApplicationRecord
    # validate if a field is not empty.
    validates :title, :description, :image_url, presence: true

    # validate if the price is a number.
    validates :price, numericality: { greater_than_or_equal_to: 0.01 }

    # validate if a title have unique title
    validates :title, uniqueness: true

    # validate if the URL for the image is valid.
    validates :image_url, allow_blank: true, format: {
        with: %r{\.(gif|jpg|png)\z}i,
        message: 'must be a URL for GIF, JPG or PNG image.'
    }
end
