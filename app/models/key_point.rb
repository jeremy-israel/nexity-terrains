class KeyPoint < ApplicationRecord
  belongs_to :secondary_title
  belongs_to :image
  belongs_to :gc_key_point
end
