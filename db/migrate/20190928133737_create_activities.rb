class CreateActivities < ActiveRecord::Migration[6.0]
  def change
    enable_extension 'pgcrypto'

    create_table :activities, id: :uuid, default: 'gen_random_uuid()' do |t|
      t.string :name

      t.timestamps
    end
  end
end
