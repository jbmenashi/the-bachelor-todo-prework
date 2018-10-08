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
  data_each do |season, contestants|
    contestants.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
