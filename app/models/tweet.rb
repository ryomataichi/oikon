class Tweet < ApplicationRecord
    scope :active, -> { where(active: "true") }
    has_one_attached :image
end
