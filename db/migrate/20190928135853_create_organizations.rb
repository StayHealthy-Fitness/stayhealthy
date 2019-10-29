# frozen_string_literal: true

class CreateOrganizations < ActiveRecord::Migration[6.0]
  def change
    create_table :organizations, id: :uuid, default: 'gen_random_uuid()' do |t|
      t.string :name

      t.timestamps
    end
  end
end
