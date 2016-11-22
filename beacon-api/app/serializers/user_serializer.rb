class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :active, :email
end
