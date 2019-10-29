# frozen_string_literal: true

class Organization < ApplicationRecord
  has_many :events
  has_many :organization_locations
end
