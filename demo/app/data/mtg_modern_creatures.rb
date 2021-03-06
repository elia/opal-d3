require "ostruct"

# As of Kaladesh
# get rid of all *-cards 
MtgModernCreatures = [
  [-1, -1, 1],
  [-1, 3, 1],
  ["*", "*", 70],
  ["*", 1, 2],
  ["*", "1+*", 2],
  ["*", 3, 3],
  ["*", 4, 1],
  ["*", 5, 1],
  [0, "*", 1],
  [0, 0, 85],
  [0, 1, 47],
  [0, 2, 32],
  [0, 3, 41],
  [0, 4, 40],
  [0, 5, 17],
  [0, 6, 9],
  [0, 7, 2],
  [0, 8, 2],
  [0, 13, 2],
  [1, 1, 753],
  [1, 2, 173],
  [1, 3, 144],
  [1, 4, 69],
  [1, 5, 23],
  [1, 6, 4],
  [1, 7, 2],
  [1, 8, 1],
  ["1+*", "1+*", 1],
  [2, "*", 1],
  [2, 0, 1],
  [2, 1, 416],
  [2, 2, 936],
  [2, 3, 259],
  [2, 4, 111],
  [2, 5, 35],
  [2, 6, 5],
  [2, 7, 3],
  [2, 8, 2],
  [2, 10, 1],
  [3, 1, 107],
  [3, 2, 209],
  [3, 3, 522],
  [3, 4, 120],
  [3, 5, 49],
  [3, 6, 17],
  [3, 7, 4],
  [3, 8, 1],
  [4, 1, 31],
  [4, 2, 53],
  [4, 3, 104],
  [4, 4, 331],
  [4, 5, 75],
  [4, 6, 27],
  [4, 7, 7],
  [4, 8, 1],
  [4, 9, 2],
  [5, 1, 11],
  [5, 2, 16],
  [5, 3, 40],
  [5, 4, 76],
  [5, 5, 199],
  [5, 6, 34],
  [5, 7, 17],
  [5, 8, 3],
  [5, 9, 1],
  [6, 1, 8],
  [6, 2, 3],
  [6, 3, 8],
  [6, 4, 31],
  [6, 5, 31],
  [6, 6, 125],
  [6, 7, 8],
  [6, 8, 2],
  [6, 9, 1],
  [7, 2, 3],
  [7, 3, 1],
  [7, 4, 5],
  [7, 5, 6],
  [7, 6, 13],
  [7, 7, 46],
  [7, 8, 2],
  [7, 10, 1],
  [7, 11, 2],
  [8, 0, 1],
  [8, 4, 1],
  [8, 5, 3],
  [8, 7, 1],
  [8, 8, 30],
  [8, 9, 1],
  [9, 5, 1],
  [9, 7, 2],
  [9, 8, 1],
  [9, 9, 11],
  [9, 10, 1],
  [9, 14, 1],
  [10, 2, 1],
  [10, 8, 1],
  [10, 9, 1],
  [10, 10, 13],
  [11, 9, 1],
  [11, 11, 4],
  [12, 12, 3],
  [13, 13, 5],
  [15, 15, 2],
].map do |p,t,c|
  OpenStruct.new(
    power: p,
    toughness: t,
    count: c,
  )
end.select{|cg| cg.power.is_a?(Integer) and cg.toughness.is_a?(Integer) }
