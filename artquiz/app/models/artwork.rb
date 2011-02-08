class Artwork < ActiveRecord::Base

  def match_attrib(attrib, value) 
    case attrib
      when :title then (title.downcase == value.downcase)
      when :artist then (artist.split.last.downcase == value.downcase \
                         or artist.downcase == value.downcase)
      when :movement then (movement.downcase == value.downcase) 
      when :date then (date.downcase == value.downcase)
    end
  end

end
