class Personnel < ApplicationRecord
  belongs_to :position
  has_many :contracts
end
