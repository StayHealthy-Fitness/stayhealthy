class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events, id: :uuid, default: 'gen_random_uuid()' do |t|
      t.belongs_to :organization, type: :uuid

      t.string :name
      t.string :description
      t.string :sign_up_link
      t.boolean :public

      t.timestamps
    end

    create_join_table :events, :activities, column_options: { type: :uuid } do |t|
      t.index :activity_id
      t.index :event_id
    end
  end
end
