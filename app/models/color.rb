class Color < ApplicationRecord
    has_many :tracks
    has_many :colors, through :tracks
end
