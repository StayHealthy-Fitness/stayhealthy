# frozen_string_literal: true

class CreateActivityLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :activity_locations, id: :uuid, default: 'gen_random_uuid()' do |t|
      t.string :name

      t.timestamps
    end

    create_join_table :activity_locations, :activities, column_options: { type: :uuid } do |t|
      t.index :activity_id
      t.index :activity_location_id
    end
  end
end
