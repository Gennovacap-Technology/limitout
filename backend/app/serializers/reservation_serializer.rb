class ReservationSerializer < ActiveModel::Serializer
  attributes :id, :start_date, :end_date, :start_time, :end_time
end
