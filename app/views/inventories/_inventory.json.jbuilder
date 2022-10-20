# frozen_string_literal: true

json.extract! inventory, :id, :Name, :user_id, :created_at, :updated_at
json.url inventory_url(inventory, format: :json)
