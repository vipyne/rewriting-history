#! /usr/bin/env ruby

string_w_newlines = "
1111191119111118111181888881888881811111111181111111
1111999199911118111181118111118111811111111888111111
1111999999911118111181118111118111811118888888888811
1111999999911118111181118111118111811111188888881111
1111199999111118111181118111118111811111118818811111
1111119991111118111181118111118111811111188111881111
1111111911111118888181118111118111888811811111118111
"
height = 7 # days
width = 52 # weeks

in_string = string_w_newlines.gsub(/\n/, "")

out_string = in_string.clone

width.times do |ww|
  height.times do |hh|
    out_string[height * ww + hh] = in_string[width * hh + ww]
  end
end

puts out_string += "1111111" # add a couple extra days for in progress week