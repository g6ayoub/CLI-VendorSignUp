require "./vendor.rb"

def generate_flyer
puts "Come see us at the 25th annual Roger's Park Artisan Market!"
puts "
_______________________________________
|                                     |
|                                     |
|              IMAGE                  |
|                                     |
|                                     |
|_____________________________________|

"
puts "\nCheck out our amazing collection of #{@products}!"
puts "\nJuly 25th @ 1234 Chicago Ave"
puts "\nand visit us online at: \n
Website: #{social_sites[4]} \n
Instagram: #{social_sites[0]}, Twitter: #{social_sites[1]}, TikTok: #{social_sites[2]}, Facebook: #{social_sites[3]}"
end
