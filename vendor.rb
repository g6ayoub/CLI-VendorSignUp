require "./flyer.rb"

class Vendor
  attr_accessor :your_name, :business_name, :products, :registration_id, :social_sites, :email

  def initalize 
    @your_name = your_name
    @business_name = business_name
    @products = products
    @registration_id = registration_id
  end

  def vendor_screening 
    puts "Hello! Would you like to register for the Roger's Park Artisan Market?\nPlease type y for 'Yes' or n for 'no'"
    answer = gets.chomp 
    case answer
    when "y"
      puts "\nGreat! Let's get started."
      register 
    when "n"
      puts "\nWe hope to see you there!"
    else
      puts "\nSorry, we didn't get that, please type 'y' to register or 'n' to exit!"
      vendor_screening
    end
  end
  
  def register 
    puts "\nWhat is your name?"
    @your_name = gets.capitalize.chomp
    puts "\nWelcome, #{@your_name}!\n"
    puts "\nWhat is the name of your business?"
    @business_name = gets.chomp
    puts "\nAmazing - we're excited to host #{@business_name}, #{@your_name}!\n"
    puts "\nWhat types of products will you be showcasing?"
    @products = gets.capitalize.chomp
    puts "\nWonderful! We're excited to check out #{@business_name}'s #{@products}!"
    collect_email
  end

    def collect_email
    puts "\n"
    puts "\nPlease enter the e-mail address that you would like us to contact you through:"
    email1 = gets.chomp
    puts "\n"
    puts "\nPlease re-enter your e-mail address to confirm."
    email2 = gets.chomp
    if email1 == email2
      @email = email2
      puts "\n"
      puts"\nThank you! We will contact you with more details shortly."
      generate_id
    else
      puts "\n"
      puts "The e-mail addresses you entered did not match, please re-enter your e-mail address."
      collect_email
    end
  end
  

  def generate_id
    @registration_id = rand(10_000..20_000)
    puts "\n"
    puts "Your registration id # is #{registration_id}"
    puts "Please keep this id number, in case you have any questions or would like to withdraw from the market."
    marketing
  end

  def marketing
    puts "\n"
   puts "Please enter #{@business_name}'s social media handle(s)or website for our marketing materials! You can skip if you would like by pressing 'Enter' or 'Return' on your device."
    puts "\nInstagram:"
    instagram = gets.chomp
    puts "\nTwitter:"
    twitter = gets.chomp
    puts "\nTikTok:"
    tiktok = gets.chomp
    puts "\nFacebook:"
    facebook = gets.chomp
    puts "\nWebsite:"
    website = gets.chomp
    puts "\n"
    puts "Thank you! We have automatically generated this flyer for you to share:"
    puts "\n"

    @social_sites = [instagram, twitter, tiktok, facebook, website]

    generate_flyer
  end

end




  
