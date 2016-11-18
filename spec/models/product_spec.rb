require 'rails_helper'

RSpec.describe Product, type: :model do

  describe 'Validations' do

    it "should have all 4 validations" do
      @category = Category.create(name: 'Outdoor')
      @product = Product.create(name: 'Pup Tent', price: 100, quantity: 50, category_id: @category.id)
      expect(@product).to be_valid
    end

    it "should have a name" do
      @category = Category.create(name: 'Outdoor')
      @product = Product.create(name: "", price: 100, quantity: 50, category_id: @category_id)
      expect(@product).not_to be_valid
      expect(@product.errors.full_messages)
    end

      it "should have a price" do
      @category = Category.create(name: 'Outdoor')
      @product = Product.create(name: 'Pup Tent', price: nil, quantity: 50, category_id: @category_id)
      expect(@product).not_to be_valid
      expect(@product.errors.full_messages)
    end

      it "should have a quantity" do
      @category = Category.create(name: 'Outdoor')
      @product = Product.create(name: 'Pup Tent', price: 100, quantity: nil, category_id: @category_id)
      expect(@product).not_to be_valid
      expect(@product.errors.full_messages)
    end

      it "should have a category" do
      @category = Category.create(name: 'Outdoor')
      @product = Product.create(name: 'Pup Tent', price: 100, quantity: 50, category_id: nil)
      expect(@product).not_to be_valid
      expect(@product.errors.full_messages)
    end
  end
end
