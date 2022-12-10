module Dina
  describe 'Product' do

    before(:all) do
      @id = SecureRandom.uuid
    end

    it "should create an object of type Product" do
      product = Dina::Product.new
      expect(product).to be_a(Dina::Product)
    end

    it "should create an object of type Product with a UUID as id" do
      product = Dina::Product.new
      expect(product.id).to be_a_uuid
    end

  end
end
