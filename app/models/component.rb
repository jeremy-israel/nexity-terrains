class Component < ApplicationRecord
  belongs_to :terrain_page
  has_many :gc_key_points
  has_many :gc_free_contents
  has_many :sc_home_heads
end
