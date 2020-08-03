require_relative './part_1_solution.rb'
require "pry"

def apply_coupons(cart, coupons)
  coupons.each do |coupon_item|
    #check the coupon against each item in the cart
    cart.each do |cart_item|
      #check whether it's the same item.
      if cart_item[:item] == coupon_item[:item]
        if cart_item[:count] >= coupon_item[:num]
          cart_item[:count] = cart_item[:count] - coupon_item[:num]
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
