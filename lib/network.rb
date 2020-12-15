class Network

  attr_reader :name,
              :shows

  def initialize(name)
    @name  = name
    @shows = []
  end

  def add_show (show)
    @shows.push(show)
  end

  def main_characters
    character = @shows.map{|e|e.characters}.flatten
    name = character.map{|e| e.name}
    upcase_name = name.select{|e|e == e.upcase}
    upcase_name_actor = character.select{|e| e.name[upcase_name.join]}
    if character.map{|e|e.salary > 500000} && upcase_name
      upcase_name_actor
    end
  end

  def actors_by_show
    film1 = @shows.first
    film2 = @shows.last
    knight_rider_actors = @shows.map{|e|e.actors}.map{|e|e.first}
    parks_and_rec_actors = @shows.map{|e|e.actors}.map{|e|e.first}

    actors_by_show = {
            @shows.first => knight_rider_actors,
            @shows.last => parks_and_rec_actors}
  end

end
