require 'test_helper'

class CategoryTest < ActiveSupport::TestCase

	def step
		@category =  Category.new(name: "sport")
	end
     
     test "category should be valid" do
        assert @category.valid?
     end	

end