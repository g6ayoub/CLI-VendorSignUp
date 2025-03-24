require "./flyer.rb"

class Vendor
  attr_accessor :your_name, :business_name, :products, :registration_id, :social_sites, :slogan

  def initalize 
    @your_name = your_name
    @business_name = business_name
    @products = products
    @registration_id = registration_id
  end

  def registration 
    puts "Hello! Would you like to register for the Roger's Park Artisan Market?\nPlease type y for 'Yes' or n for 'no'"
    answer = gets.chomp 
    case answer
    when "y"
      puts "Great! Let's get started."
      register 
    when "n"
      puts "We hope to see you there!"
    else
      puts "Sorry, we didn't get that, please type 'y' to register or 'n' to exit!"
      registration
    end
  end
  
  def register 
    puts "What is your name?"
    @your_name = gets.capitalize.chomp
    puts "Welcome, #{@your_name}!\n"
    puts "What is the name of your business?"
    @business_name = gets.chomp
    puts "Amazing - we're excited to host #{@business_name}, #{@your_name}!\n"
    puts "What types of products will you be showcasing?"
    @products = gets.capitalize.chomp
    puts "Wonderful! We're excited to check out #{@business_name}'s #{@products}!"
    generate_id
  end

  def generate_id
    @registration_id = rand(10_000..20_000)
    puts "Your registration id # is #{registration_id}"
    puts "Please keep this id number, in case you have any questions or would like to withdraw from the market."
    marketing
  end

  def marketing
   puts "Please enter #{@business_name}'s social media handle(s)or website for our marketing materials! You can skip if you would like by pressing 'Enter' or 'Return' on your device."
    puts "Instagram:"
    instagram = gets.chomp
    puts "Twitter:"
    twitter = gets.chomp
    puts "TikTok:"
    tiktok = gets.chomp
    puts "Facebook:"
    facebook = gets.chomp
    puts "Website:"
    website = gets.chomp
    puts "Thank you! We have automatically generated this flyer for you to share:"

    @social_sites = [instagram, twitter, tiktok, facebook, website]

    generate_flyer
  end

end




  
