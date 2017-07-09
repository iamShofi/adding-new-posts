ActiveAdmin.register Post do
permit_params :title, :price, :body, :category_id, :picture

end