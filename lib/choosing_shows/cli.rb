require 'pry'

class CLI
    BUSINESS_TYPE = ["Apparel and Footwear", "Beauty"] 
    def start
        greeting
    end

    def greeting
        puts "Welcome, to the Union Square retail guide."
        puts "Choose which business type you would like to see more of." 
        display_business_types  
    end

    def display_business_types
        BUSINESS_TYPE.each_with_index do |type, index|
            puts "#{index + 1}: #{type}"
        end
        puts "Enter a number between 1-#{BUSINESS_TYPE.length} to choose which business type you would like to see more of."
        user_input
    end

    def user_input
        input = gets.strip
        if input != "1" || "2"
            "ERROR"
        end
    end


end