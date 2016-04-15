module CGTest
  # Posts that are contained on pages class
  class Post
    attr_reader :br, :data_post_id

    def initialize(browser, data_post_id)
      @br = browser
      @data_post_id = data_post_id
    end

    def post
      br.div(data_post_id: data_post_id)
    end

    def post_title
      post.h4(class: 'media-heading')
    end

    def post_media
      post.div(class: 'embed_post_media')
    end

    def post_truncated_content
      post.span(class: 'truncated_content')
    end

    def post_expand_content
      post.span(class: 'expand_content_control')
    end

    def post_show_comments_button
      post.button(class: 'show_comments')
    end

    def post_star
      post.link(class: 'track_star')
    end
  end
end
