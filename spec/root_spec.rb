describe 'Root page' do
  let(:root_page) { CGTest::RootPage.new(@br) }

  before(:each) do
    root_page.goto
  end

  it 'should have posts that contain text' do
    posts = root_page.posts
    posts.each do |post|
      puts "Data post ID: #{post.data_post_id}"
      expect(post.post_truncated_content.text.empty?).to be false
    end
  end
end
