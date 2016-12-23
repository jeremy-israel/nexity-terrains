class ScHomeHead < ApplicationRecord
  belongs_to :component
  belongs_to :cta
  belongs_to :image
  belongs_to :main_title
  belongs_to :secondary_title
end
