class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :phone, :profile_photo, :profile_video, :profile_e_description
end
