require 'pry'

class CLI

    attr_accessor :input, :stores

    BUSINESS_TYPE = ["Apparel and Footwear", "Beauty"] 
    def start
        greeting
        select_store
    end

    def greeting
        puts "Welcome, to the Union Square retail guide."
        puts "Choose which business type you would like to see more of." 
        API.get_businesses
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
        @input = gets.strip.to_i
        if !input.between?(1, BUSINESS_TYPE.length)
            puts "ERROR. Input a number between 1-2."
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
        display_retail_stores
    end
    
    def display_retail_stores
        @amount_of_stores = stores.each_with_index do |type, index|
            puts "#{index + 1}: #{type.business}"
        end
       
    end

    def select_store
        puts "To get more information about a store, choose a number between 1-#{display_retail_stores.length}"
        @input = gets.strip.to_i
        if !input.between?(1, display_retail_stores.length)
            puts "ERROR. Input a number between 1-#{display_retail_stores.length}."
            
        else 
            display_store_info
        end
    end

    def display_store_info
    end



end