class Category < ApplicationRecord
  has_many :stdudy_items, dependent: :destroy
end
