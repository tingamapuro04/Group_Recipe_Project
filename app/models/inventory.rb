# frozen_string_literal: true

class Inventory < ApplicationRecord
  has_many :inventory_foods, foreign_key: :inventory_id
  belongs_to :user, class_name: 'User'
end
