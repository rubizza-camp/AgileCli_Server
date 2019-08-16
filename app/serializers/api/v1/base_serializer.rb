class Api::V1::BaseSerializer
  include FastJsonapi::ObjectSerializer
  
  def created_at
    object.created_at.in_time_zone.iso8601 if created
  end

  def updated_at
    object.updated_at.in_time_zone.iso8601 if created
  end

  def created
    object.created_at
  end
end
