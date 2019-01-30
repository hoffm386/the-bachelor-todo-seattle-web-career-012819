def get_first_name_of_season_winner(data, season)
  contestant = data[season].find{|contestant| contestant["status"] == "Winner"}
  return contestant["name"].split(" ")[0]
end

def get_contestant_name(data, occupation)
  contestant = data.values.flatten.find{|contestant| contestant["occupation"] == occupation}
  return contestant["name"]
end

def count_contestants_by_hometown(data, hometown)
  return data.values.flatten.select{|contestant| contestant["hometown"] == hometown}.length
end

def get_occupation(data, hometown)
  contestant = data.values.flatten.find{|contestant| contestant["hometown"] == hometown}
  return contestant["occupation"]
end

def get_average_age_for_season(data, season)
  contestant_ages = data[season].collect{|contestant| contestant["age"].to_f}
  # answer rounded to nearest integer
  return (contestant_ages.reduce(:+) / contestant_ages.length).round
end
