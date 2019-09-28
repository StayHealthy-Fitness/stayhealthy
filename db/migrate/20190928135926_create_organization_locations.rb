class CreateOrganizationLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :organization_locations, id: :uuid, default: 'gen_random_uuid()' do |t|
      t.belongs_to :organization, type: :uuid

      t.string :name
      t.boolean :public

      t.timestamps
    end

    create_join_table :organization_locations, :activities, column_options: { type: :uuid } do |t|
      t.index :activity_id, name: :idx_org_locations_activities_activity_id
      t.index :organization_location_id, name: :idx_org_locations_activities_org_loc_id
    end
  end
end
