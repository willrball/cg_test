describe 'Root page' do
  let(:root_page) { CGTest::RootPage.new(@br) }

  before(:each) do
    root_page.goto
  end

  def check_posts
    posts = root_page.posts
    posts.each do |post|
      puts "Data post ID: #{post.data_post_id}"
      yield post
    end
  end

  it 'should have posts that contain titles' do
    check_posts { |post| expect(post.post_title.text.empty?).to be false }
  end

  it 'should have posts that contain text' do
    check_posts { |post| expect(post.post_truncated_content.text.empty?).to be false }
  end
end
