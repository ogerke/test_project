require 'test_helper'

class CartTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  #test "the truth" do
  #  assert true
  #end

  test "total_amount == 0 if the cart is empty" do
    cart = Cart.new
    total_amount = cart.total_amount
    assert total_amount == 0
  end

  test "total_amount== sum of the smarts prices"  do
    htc = Smart.create(:name => 'HTC', :price => 10, :descripcion => "."* 20, :image_url => "sumsung.jpg")
    atrix = Smart.create(:name => 'Atrix', :price => 15, :descripcion => "."* 20, :image_url => "sumsung.jpg")

    # creamos carrito vacio
    cart = Cart.new

    # agregamos lineas al carrito
    cart.line_items << LineItem.create(:smart => htc, :cart => cart)
    cart.line_items << LineItem.create(:smart => atrix, :cart => cart)

    assert_equal(25, cart.total_amount)

  end
end
