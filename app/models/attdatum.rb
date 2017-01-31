class Attdatum < ApplicationRecord
  belongs_to :personnel
  belongs_to :season
  belongs_to :rateable
end
