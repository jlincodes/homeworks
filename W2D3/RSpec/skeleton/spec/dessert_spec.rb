require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:cheesecake) { Dessert.new("salted caramel cheesecake", 3, chef) }
  let(:chef) { double("chef", name: "Boy R D") }

  describe "#initialize" do
    it "sets a type" do
      expect(cheesecake.type).to eq("salted caramel cheesecake")
    end
    it "sets a quantity" do
      expect(cheesecake.quantity).to eq(3)
    end
    it "starts ingredients as an empty array" do
      expect(cheesecake.ingredients).to eq([])
    end
    it "raises an argument error when given a non-integer quantity" do
      expect { Dessert.new("salted caramel cheesecake", "a lot", chef) }.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      cheesecake.add_ingredient("cream cheese")
      expect(cheesecake.ingredients).to_not be_empty
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      ingredients = ['cream cheese', 'eggs', 'graham crackers', 'brown sugar', 'butter']

      ingredients.each do |ingredient|
        cheesecake.add_ingredient(ingredient)
      end

      cheesecake.mix!
      expect(cheesecake.ingredients).to_not eq(ingredients)
      expect(cheesecake.ingredients.sort).to eq(ingredients.sort)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      cheesecake.eat(2)
      expect(cheesecake.quantity).to eq(1)
    end
    it "raises an error if the amount is greater than the quantity" do
      expect { cheesecake.eat(4) }.to raise_error("not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      allow(chef).to receive(:titleized).and_return("Chef Boy R D")
      expect(cheesecake.serve).to eq("Chef Boy R D has made 3 cheesecakes!")
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(chef).to receive(:bake).with(cheesecake)
      cheesecake.make_more
    end
  end
end
