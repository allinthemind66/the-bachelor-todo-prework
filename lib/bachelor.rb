require 'pry'
def get_first_name_of_season_winner(data, season)
  data.each do |hash_season, contestant|
    if hash_season == season
      contestant.each do |person|
          if person["status"] == "Winner"
            return person["name"].split[0]
          end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestant|
    contestant.each do |person|
      if person["occupation"] == occupation
        return person["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  occurrence = 0
  data.each do |season, contestant|
    contestant.each do |person|
      if person["hometown"] == hometown
        occurrence += 1
      end
    end
  end
  occurrence
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |person|
      if person["hometown"] == hometown
        return person["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  ages = 0
  number_of_people = 0
  data.each do |season_hash, contestants|
    if season_hash == season
    contestants.each do |person|

      ages += person["age"].to_f
      number_of_people += 1
    end
    end
  end
  return (ages / number_of_people.to_f).round
end
