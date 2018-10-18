class BloggersController < ActionController::Base

  def show
    @blogger = Blogger.find(params[:id])
  end


end
