# == Schema Information
#
# Table name: directors
#
#  id         :bigint           not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Director < ApplicationRecord
  def filmograpphy
    my_id = self.id

    matching_movies = Movie.where({ :director_id => my_id })

    return matching movies
  end
end
