# == Schema Information
#
# Table name: movies
#
#  id          :bigint           not null, primary key
#  description :text
#  duration    :integer
#  image       :string
#  title       :string
#  year        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  director_id :integer
#
class Movie < ApplicationRecord
  def director
    director_id = self.director_id
    matching_directors = Director.where({ :id => director_id })  
    the_director = matching_directors.first
    return the_director
  end

  def characters
    my_id = self.id
    matching_characters = Character.where(:id => my_id)
    return matching_characters
    # the_characters = matching_characters.all
    # return the characters
  end
end
