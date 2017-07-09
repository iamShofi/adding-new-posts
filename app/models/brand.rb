class Brand < ApplicationRecord
	def brand_params
      params.require(:name)
    end
	
	has_many :posts
end
