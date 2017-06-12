class Category < ApplicationRecord
	def category_params
      params.require(:name)
    end
	
	has_many :posts
end
