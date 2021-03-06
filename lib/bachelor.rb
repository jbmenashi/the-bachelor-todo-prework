def get_first_name_of_season_winner(data, season)
  data.each do |bach_season, contestants|
    if bach_season == season
      contestants.each do |contestant|
        if contestant["status"] == "Winner"
          name_array = contestant["name"].split(" ")
          return name_array[0]
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0 
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        counter += 1 
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  data.each do |bach_season, contestants|
    if bach_season == season
      total_age = 0 
      contestants.each do |contestant|
        total_age += contestant["age"].to_i
      end
      average_age = (total_age.to_f / contestants.length.to_f)
      return average_age.round
    end
  end
end
