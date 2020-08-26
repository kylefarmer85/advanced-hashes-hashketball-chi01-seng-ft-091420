require 'pry'
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

def num_points_scored(player)
  result = 0
  game_hash.each do |team, attributes|
    attributes[:players].each do |i|
      if i[:player_name] == player
       result += i[:points]
      end
    end
  end
  result
end

def shoe_size(player)
    result = 0
  game_hash.each do |team, attributes|
    attributes[:players].each do |i|
      if i[:player_name] == player
       result += i[:shoe]
      end
    end
  end
  result
end

def team_colors(team)
  colors = []
  game_hash.each do |k,v|
    if v[:team_name] == team
      colors << v[:colors]
    end
  end
  colors.flatten
end
  

def team_names
  teams = []
  game_hash.each do |k,v|
    teams.push(v[:team_name])
  end
  teams
end

def player_numbers(team)
  numbers = []
  game_hash.each do |k,v|
    if v[:team_name] == team
      v[:players].each do |i|
        numbers << i[:number]
      end
    end
  end
  numbers
end

def player_stats(name)
  stats = {}
  game_hash.each do |k,v|
    v[:players].each do |i|
      if i[:player_name] == name
        stats = i
      end
    end
  end
  stats
end

def big_shoe_rebounds
  rebounds = 0
  shoe_size = 0
  game_hash.each do |k,v|
    v[:players].each do |i|
      if i[:shoe] >= shoe_size
        shoe_size = i[:shoe]
      end
      if i[:shoe] == shoe_size
        rebounds = i[:rebounds]
      end
    end
  end
  rebounds
end

def most_points_scored
  player = ""
  points = 0
  game_hash.each do |k,v|
    v[:players].each do |i|
      if i[:points] >= points
        points = i[:points]
      end
      if i[:points] == points
        player = i[:player_name]
      end
    end
  end
  player
end

def winning_team
  points_home = 0
  points_away = 0
  game_hash[:home][:players].each do |i|
    points_home += i[:points]
  end
  game_hash[:away][:players].each do |i|
    points_away += i[:points]
  end
  if points_home > points_away
    game_hash[:home][:team_name]
  else
    game_hash[:away][:team_name]
  end
end

def player_with_longest_name
  player = ""
  longest_name = ""
  game_hash.each do |k,v|
    v[:players].each do |i|
      if i[:player_name].length >= longest_name.length
        longest_name = i[:player_name]
      end
      if i[:player_name] == longest_name
        player = i[:player_name]
      end
    end
  end
  player
end
    


    
    