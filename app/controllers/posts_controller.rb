class PostsController < ActionController::Base

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
    @bloggers = Blogger.all
  end

  def create
    @post = Post.new(params.require(:post).permit(:title, :content, :likes, :blogger_id, :destination_id))
    if @post.valid?
      @post.save
      redirect_to post_path(@post)
    else
      @errors = @post.errors.full_messages
      # redirect_to new_post_path
      render :new
    end
  end

  def edit

  end

  def update

  end


end
