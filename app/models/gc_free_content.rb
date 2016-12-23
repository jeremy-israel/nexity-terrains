class GcFreeContent < ApplicationRecord
  belongs_to :component
  belongs_to :image
  belongs_to :main_title
  belongs_to :cta
end
