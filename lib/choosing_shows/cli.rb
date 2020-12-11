require 'pry'
require "tty-prompt"

class CLI

    attr_accessor :input, :stores

    BUSINESS_TYPE = ["Apparel and Footwear", "Beauty"] 
    
    def start
        greeting
        display_retail_stores
        select_store_msg
        select_store
    end

    def greeting
        puts ""
        puts "Welcome, to the Union Square retail guide.".white
        puts ""
        puts "Choose which business type you would like to see more of.".white
        API.get_businesses
        display_business_types  
    end

    def display_business_types
        BUSINESS_TYPE.each_with_index do |type, index|
            puts "#{index + 1}: #{type.green}"
        end
        puts "Enter a number between 1-#{BUSINESS_TYPE.length} to choose which business type you would like to see more of.".white
        user_input
    end

    def user_input
        @input = gets.strip.to_i
        if !input.between?(1, BUSINESS_TYPE.length)
            puts "ERROR. Input a number between 1-2.".red
            user_input
        else
          find_businesses
        end
    end

    def find_businesses
        type = BUSINESS_TYPE[input - 1]
        @stores = RetailStore.all.select do |store|
            store.type_of_business == type
        end
    end
    
    def display_retail_stores
        stores.each_with_index do |type, index|
            puts "#{index + 1}: #{type.business.blue}"
        end
    end

    def select_store_msg
        puts "To get more information about a store, choose a number between 1-#{stores.length}".white
    end

    def select_store
        @input = gets.strip.to_i
        if !input.between?(1, stores.length)
            puts "ERROR. Input a number between 1-#{stores.length}.".red
            select_store
        else 
           display_store_info
        end
    end

    def display_store_info
        prompt = TTY::Prompt.new
        puts "#{stores[input-1].business}".blue
        puts "Phone Number: #{stores[input-1].phone_number}"
        puts "Address: #{stores[input-1].parsed_address}"
        puts "         #{stores[input-1].city_state}"
        puts "         #{stores[input-1].zip_code}"
        prompt.yes?("Would you like to choose a different store? Enter 'yes' or 'no'.".white)? repeat : goodbye
    end

    def repeat 
        display_business_types
        display_retail_stores
        select_store_msg
        select_store
    end

    def goodbye
        puts "Thanks for using the Union Square Retail Guide CLI app!".yellow
        exit
    end
end