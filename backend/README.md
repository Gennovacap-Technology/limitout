# Limit Out API

## persona 1 (land owner)
  - host a hunt on your land
  - list your land

## persona 2 (outfitter)
  - curate hunted trips on other people's land

## Sign up process for hosting
  - multiple steps
  - land
    - location
    - acreage
    - vegetation
    - water sources
    - blinds and feeders (locations)
    - natural feeders
  - vessel (if fishing)
  - animals
    - quality
    - abundance
    - number (count)
  - amenities
    - food, lodging, gear, ammo, guns, off road vehicles
  - create hunting or fishing expedition (premium for outfitters)
    - number of guests
    - cost of trip
    - dates
    - allow multiple bookings on the same date


## Map with filter for searching land and outfitters
  - dates
  - experience type (leased land, outfitter)
  - price range
  - results -> single post -> book expedition


## Persona 3 (consumer)
- profile
  - edit
  - photos, videos
- trust and verification
  - id (https://www.jumio.com/)
- reviews
- references
- messaging
- reservations / trips
- notifications
  - push to app
  - email
  - sms
- payment methods
  - credit cards
- payout preferences
  - bank account
- transaction history
  - completed
  - future
  - gross earnings
- security
  - change password
  - login notices
- invite friends
  - gmail
  - yahoo
  - outlook

rails g serializer
##  hunting_property description:text address:string city:string state:string acreage:integer vegetation:text water_sources:text number_blinds:integer blind_types:string feeders:integer natural_feeders:boolean
##  game game_type:string quality:string abundance:string number_animals:integer
##  hunting_amenities food:string lodging:string gear:string ammo:string guns:string vehicles:string
##  expedition title:string description:text number_of_guests:string cost:integer allow_multiple_bookings_on_date:boolean
