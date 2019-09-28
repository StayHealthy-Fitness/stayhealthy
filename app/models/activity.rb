class Activity < ApplicationRecord
  has_and_belongs_to_many :events
  has_and_belongs_to_many :activity_locations
  has_and_belongs_to_many :organization_location
end
