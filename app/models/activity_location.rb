class ActivityLocation < ApplicationRecord
  has_many :addresses, as: :addressable
  has_and_belongs_to_many :activities
end
