# frozen_string_literal: true

class Event < ApplicationRecord
  belongs_to :organization
  has_many :addresses, as: :addressable
  has_and_belongs_to_many :activities
end
