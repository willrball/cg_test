module CGTest
  # Methods for pages with posts
  module Posts
    def post_divs
      br.divs(class: 'post commentable')
    end

    def posts
      post_divs.map { |post| CGTest::Post.new(br, post.data_post_id) }
    end
  end
end
