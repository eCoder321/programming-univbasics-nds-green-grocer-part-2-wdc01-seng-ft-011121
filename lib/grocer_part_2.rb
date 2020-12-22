require_relative './part_1_solution.rb'
require 'pry'

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
<<<<<<< HEAD
=======
  new_arr =[]
>>>>>>> 32ccdad878e7ab5635bf46930ca5ebd607875309
  
  cart.each {
    |individual_item|
    my_coupon = {}
    
    coupons.each { 
      |specific_coupon|
      #binding.pry
<<<<<<< HEAD
      my_coupon = specific_coupon if specific_coupon[:item] === individual_item[:item]
=======
      my_coupon = specific_coupon if specific_coupon[:item] == individual_item[:item]
>>>>>>> 32ccdad878e7ab5635bf46930ca5ebd607875309
    }
     
     coupon_counter = 0
     
<<<<<<< HEAD
     if !my_coupon.empty?
     
       while individual_item[:count] >= my_coupon[:num] do
          coupon_counter += my_coupon[:num]
          individual_item[:count] -= my_coupon[:num]
       end
       
       my_coupon_price = my_coupon[:cost]/my_coupon[:num]
         
       cart << {
         item: "#{individual_item[:item]} W/COUPON",
         price: my_coupon_price,
         clearance: individual_item[:clearance],
         count: coupon_counter
       }
     end
     
     #***new_arr << cart - WHY DID I THINK I NEEDED YOU? ***
  }
  
  cart
=======
     if my_coupon.empty?
       return cart
     end
     
     while individual_item[:count] >= my_coupon[:num] do
        coupon_counter += my_coupon[:num]
        individual_item[:count] -= my_coupon[:num]
     end
     
     my_coupon_price = my_coupon[:cost]/my_coupon[:num]
       
     cart << {
       item: "#{individual_item[:item]} W/COUPON",
       price: my_coupon_price,
       clearance: individual_item[:clearance],
       count: coupon_counter
     }
     
     new_arr << cart
  }
  
  return new_arr.flatten
>>>>>>> 32ccdad878e7ab5635bf46930ca5ebd607875309
  
end




def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  new_arr = Array.new
  #binding.pry
  cart.each {
    |individual_item|
    if individual_item[:clearance]
      clearance_value = 0.2 * individual_item[:price]
      individual_item[:price] -= clearance_value
<<<<<<< HEAD
      individual_item[:price] = individual_item[:price].round(2)
    end
    #binding.pry
    #new_arr << cart ***IS A VERY BUGGY PART OF MY CODE; I'ON KNOW WHY I HAD IT THERE!!!***
  }
  cart
=======
      individual_item[:price].round(2)
    end
    #binding.pry
    new_arr << cart
  }
  return new_arr.flatten
>>>>>>> 32ccdad878e7ab5635bf46930ca5ebd607875309
end



def checkout(cart, coupons)
<<<<<<< HEAD
  #binding.pry
 #consolidated_cart = consolidate_cart(cart)
  #binding.pry
  #first_stage = apply_coupons(consolidate_cart(cart), coupons)
  #binding.pry
  
  second_stage = apply_clearance(apply_coupons(consolidate_cart(cart), coupons))
=======
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
  #binding.pry
  consolidated_cart = consolidate_cart(cart)
  #binding.pry
  coupon_i = coupons
  first_stage = apply_coupons(consolidated_cart, coupon_i)
  #binding.pry
  second_stage = apply_clearance(first_stage)
  #binding.pry
>>>>>>> 32ccdad878e7ab5635bf46930ca5ebd607875309
  
  total = 0
  second_stage.each {
    |individual_item|
    total += individual_item[:price] * individual_item[:count]
  }
  
  if total > 100
    final_discount = 0.1 * total
    total -= final_discount
<<<<<<< HEAD
    total = total.round(2)
  end
  #binding.pry
  total
=======
    total.round(2)
  end
  #binding.pry
  return total
>>>>>>> 32ccdad878e7ab5635bf46930ca5ebd607875309
end
