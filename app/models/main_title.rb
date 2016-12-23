class MainTitle < ApplicationRecord
  has_many :gc_key_points
  has_many :gc_free_contents
  has_many :sc_home_heads
end
