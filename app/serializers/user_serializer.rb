#
class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :current_user, :first_name, :last_name, :location_id

  def current_user
    scope == object
  end
end
