# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users, id: :uuid, default: 'gen_random_uuid()' do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.boolean :email_validated
      t.string :phone_number
      t.string :profile_image_url
      t.datetime :date_of_birth
      t.string :password_digest
      t.string :password_reset_hash
      t.boolean :admin

      t.timestamps
    end
  end
end
