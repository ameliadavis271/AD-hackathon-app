class Post < ApplicationRecord
  belongs_to :user

  def self.search(search)
    if search
      post_search = User.find_by(email: search)
      if post_search
        self.where(user_id: post_search)
      else 
        @posts = Post.all
      end
    else
      @posts = Post.all
    end
  end
end
