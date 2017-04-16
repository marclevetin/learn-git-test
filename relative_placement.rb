# Relative placement rules:
# 1) determine majority of judges
# 2) look at scores from all contestants at 1st position
# 3) does anyone have a majority of 1s?
#     if yes for 1 couple, they get the best available placement
#     if yes for more than 1 couple, look at sums
#       lowest sum gets best available placement
#       next lowest gets next best available placement
#         and so on
#       if tie, then look at the next count
#     if no, look at 1s and 2s
# 4) repeat until all couples have placements
# 5) if there is a tie at last place, then the head judge scores decides the final placement
#

require 'pry'

# Get number of judges
puts 'How many judges are there?'
print '> '
count_judges = gets.chomp.to_f

# determine majority
majority_judges = (count_judges / 2).floor

puts "Majority of judges: #{majority_judges}"

# sample data
couple_1 = { judge_1: 1, judge_2: 2, judge_3: 1, judge_4: 1, judge_5: 3 }
couple_2 = { judge_1: 2, judge_2: 1, judge_3: 4, judge_4: 3, judge_5: 5 }
couple_3 = { judge_1: 3, judge_2: 3, judge_3: 5, judge_4: 4, judge_5: 2 }
couple_4 = { judge_1: 4, judge_2: 5, judge_3: 2, judge_4: 5, judge_5: 4 }
couple_5 = { judge_1: 5, judge_2: 4, judge_3: 3, judge_4: 2, judge_5: 1 }

binding.pry

best_available_placement = 1
looking_at_score_minimum = 1
looking_at_score_maximum = 1

count = 0
couple_1.values.each do | score |
  if score == 1
    count += 1
  end
end

puts count

# score arrays
couple_1_scores = []
couple_1_scores << count
