require "administrate/fields/base"

class IconField < Administrate::Field::Base
  def url
    data.url
  end

  def thumbnail
    data.url(:thumbnail)
  end

  def to_s
    data
  end
end
