class RoomFurnitureSerializer < ActiveModel::Serializer
  attributes :id, :room_id, :furniture_id, :x_coord, :y_coord

  # belongs_to :room
  # belongs_to :furniture
end
