require_relative "../views/posts_view"

class PostsController
  def initialize
    @view = PostsView.new
  end

  def index
    # DO NOT WRITE SQL QUERIES
    # TODO: gather all posts from the database
    # TODO: give them to the view to be printed
    display_posts
  end

  def create
    # DO NOT WRITE SQL QUERIES
    # TODO: create a post
    # 1. ask the user for a title
    title = @view.ask_for('title')
    # 2. ask the user for a url
    url = @view.ask_for('url')
    # 3. create a new instance of post
    new_post = Post.new title: title, url: url
    # 4. save my post
    new_post.save # activerecord method
    display_posts
  end

  def update
    # DO NOT WRITE SQL QUERIES
    # TODO: update a post
    display_posts
    # 1. find post in DB
    post = ask_for_id_and_find_post
    # 2. ask the user for a new title
    title = @view.ask_for('title')
    # 3. ask the user for a new url
    url = @view.ask_for('url')
    # 4. update my post
    post.title = title
    post.url = url
    post.save # activerecord method
    display_posts
  end

  def destroy
    # DO NOT WRITE SQL QUERIES
    # TODO: destroy a post
    display_posts
    # 1. Find the post in the DB
    post = ask_for_id_and_find_post
    # 2. Destroy the post for the DB
    post.destroy # activerecord method
    display_posts
  end

  def upvote
    # DO NOT WRITE SQL QUERIES
    # TODO: increment the `votes` column for a post
    display_posts
    # 1. find the post in the DB
    post = ask_for_id_and_find_post
    # 2. increment the votes by 1
    post.votes += 1 # post.votes = post.votes + 1
    # 3. save the post
    post.save
    display_posts
  end

  private

  def display_posts
    # 1. Retrieve all the posts from the DB
    posts = Post.all # activerecord method
    # 2. display all those posts
    @view.display(posts)
  end

  def ask_for_id_and_find_post
    # 1. add user for an id
    id = @view.ask_for('id')
    # 2. find post in db
    Post.find(id) # activerecord method
  end
end
