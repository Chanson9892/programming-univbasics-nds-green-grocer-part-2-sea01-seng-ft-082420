require_relative './part_1_solution.rb'
require "pry"

def apply_coupons(cart, coupons)
  coupons.each do |coupon_item|
    #check the coupon against each item in the cart
    cart.each do |cart_item|
      #check whether it's the same item.
      if cart_item[:item] == coupon_item[:item]
        #check to see if there are more or equal amount of item than it says on the coupon
        if cart_item[:count] >= coupon_item[:num]
          #the new count of the item now equals the item left after coupon
          cart_item[:count] = cart_item[:count] - coupon_item[:num]
          #makes a new array index with all the keys for the couponed item
          cart[cart.length] = {
            :item => cart_item[:item] + " W/COUPON",
            :price => coupon_item[:cost] / coupon_item[:num],
            :clearance => cart_item[:clearance],
            :count => coupon_item[:num]
            }
        end
      end
    end
  end
  binding.pry
  cart
end

def apply_clearance(cart)
  # goes into each grocery_item in the cart
  cart.each do |grocery_item|
    # checks if it is on clearance and applies clearance
      if grocery_item[:clearance] == true
        grocery_item[:price] = (grocery_item[:price] * 0.80).round(2)
      end
  end
  cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
