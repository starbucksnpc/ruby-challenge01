#  Name:     Sol Nam
#  Program:  Full Stack Web Development 
#  Course:   WEBD-3011 Agile Full Stack Web Development 
#  Created:  2024-05-16
#  Updated:  2024-05-16

# 1) Copy and past the following Ruby code into a file called carl_sagan.rb and follow the self-contained instructions.

# Using a single puts statement build the following
# sentence using only data from the carl hash and the
# sagan array along with some string interpolation.
#
# We are a way for the cosmos to know itself.

#carl hash
carl  = {
          :toast => 'cosmos',
          :punctuation => [ ',', '.', '?' ],
          :words => [ 'know', 'for', 'we']
        }

# sagan array : [{},{},{}] => 0,1,2
sagan = [
          { :are => 'are', 'A' => 'a' },
          { 'waaaaaay' => 'way', :th3 => 'the' },
          'itself',
          { 2 => ['to']}
        ]

puts "#{carl[:words][2].capitalize} #{sagan[0][:are]} #{sagan[0]['A']} #{sagan[1]['waaaaaay']} #{carl[:words][1]} #{sagan[1][:th3]} #{carl[:toast]} #{sagan[3][2].first} #{carl[:words][0]} #{sagan[2]}#{carl[:punctuation][1]}"

# Here is an example of building a setence out of array/hash pieces.
example = [ 'test', 'a', 'is']
time    = { :that => 'This', :period => '.'}
puts "#{time[:that]} #{example[2]} #{example[1]} #{example[0]}#{time[:period]} \n\n"


