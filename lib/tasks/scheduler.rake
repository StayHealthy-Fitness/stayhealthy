# frozen_string_literal: true

desc 'Update sh_test_index Algolia index'
task update_sh_test_index: :environment do
  ALGOLIA_APPLICATION_ID = ENV['ALGOLIA_APPLICATION_ID']
  ALGOLIA_API_KEY = ENV['ALGOLIA_API_KEY']
  ALGOLIA_INDEX_NANE = 'sh_test_index'

  puts 'Connecting to Algolia...'

  Algolia.init(
    application_id: ALGOLIA_APPLICATION_ID,
    api_key: ALGOLIA_API_KEY
  )

  index = Algolia::Index.new(ALGOLIA_INDEX_NANE)

  puts 'Adding new objects to index ...'

  index.add_object(
    title: Faker::Name.name,
    activity: 'Some Activity',
    _geoloc: {
      lat: 44.23107,
      lng: -76.4806
    }
  )

  puts 'Done updating Algolia index!'

  # to be returned to when there is actual structure in the database, just wanted to setup jobs
  # need to think about how I'll retroactively delete objects deleted from the database
  # also it could be overkill to update every object, maybe best to somehow decide
end
