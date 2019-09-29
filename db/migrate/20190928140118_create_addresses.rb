class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses, id: :uuid, default: 'gen_random_uuid()' do |t|
      t.references :addressable, polymorphic: true, type: :uuid
      
      t.string :address_line_1
      t.string :address_line_2
      t.string :city
      t.string :state_or_province
      t.string :postal_code
      t.string :country
      t.integer :latitude
      t.integer :longitude

      t.timestamps
    end
  end
end
