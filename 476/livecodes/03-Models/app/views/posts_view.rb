class PostsView
  # TODO: implement some methods here when controller needs to `puts` or `gets`
  def ask_for(something)
    print "Enter #{something}\n> "
    gets.chomp
  end

  def display(posts)
    posts.each do |post|
      puts "#{post.id} - #{post.title}, (#{post.url}) #{post.votes} votes"
    end
  end
end
