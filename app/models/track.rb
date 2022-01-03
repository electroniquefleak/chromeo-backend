class Track < ApplicationRecord
    belongs_to :playlist, :dependent => :destroy
    belongs_to :color, :dependent => :destroy
end
