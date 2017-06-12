class Post < ApplicationRecord
	def post_params
      params.require(:title, :price, :body, :category_id)
      
    end
	belongs_to :category
end
