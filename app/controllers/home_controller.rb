class HomeController < ApplicationController

  layout false, only: [:index]

  def index
    @posts = Post.order("created_at desc").limit(3)
  end

  def bikes
  	
  end
  def kidsbikes
  	
  end
  def parts
  	
  end
  def accessories
  	
  end
  def contact
  	
  end
  def aboutus
  	
  end
  def show

    @post =Post.find(params[:id])

  end
  def post_params
    params.require(:post).permit(:title, :price, :body, :category_id, :picture)
  end
end
