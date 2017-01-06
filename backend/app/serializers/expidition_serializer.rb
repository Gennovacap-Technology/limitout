class ExpiditionSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :number_of_guests, :cost,
  :allow_multiple_bookings_on_date
end
