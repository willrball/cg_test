describe 'Navbar Link' do
  let(:root_page) { CGTest::RootPage.new(@br) }

  before(:each) do
    root_page.goto
  end

  it 'Cheerful Ghost logo should take you to Root page' do
    root_page.cheerful_ghost_logo.click
    expect(root_page.page_title).to eq @br.title
  end

  it 'Games should take you to the Most Popular Games page' do
    root_page.games_nav.click
    mp_games_page = CGTest::MostPopularGamesPage.new(@br)
    expect(mp_games_page.page_title).to eq @br.title
  end

  it 'Forums should take you to the Forums page' do
    root_page.forums_nav.click
    forums_page = CGTest::ForumsPage.new(@br)
    expect(forums_page.page_title).to eq @br.title
  end

  it 'Interviews should take you to the Interviews page' do
    root_page.interviews_nav.click
    interviews_page = CGTest::InterviewsPage.new(@br)
    expect(interviews_page.page_title).to eq @br.title
  end

  it 'Roundtable should take you to the Roundtable page' do
    root_page.roundtable_nav.click
    roundtable_page = CGTest::RoundtablePage.new(@br)
    expect(roundtable_page.page_title).to eq @br.title
  end

  it 'Memebership should take you to the Membership page' do
    root_page.membership_nav.click
    membership_page = CGTest::MembershipPage.new(@br)
    expect(membership_page.page_title).to eq @br.title
  end

  it 'Events should take you to the Events page' do
    root_page.events_nav.click
    events_page = CGTest::EventsPage.new(@br)
    expect(events_page.page_title).to eq @br.title
  end

  it 'About should take you to the About page' do
    root_page.about_nav.click
    about_page = CGTest::AboutPage.new(@br)
    expect(about_page.page_title).to eq @br.title
  end

  it 'Sign In should take you to the Sign In page' do
    root_page.login_button.click
    signup_page = CGTest::SignupPage.new(@br)
    expect(signup_page.page_title).to eq @br.title
  end
end

describe 'Navbar' do
  # Root page is tested in the link tests above

  def check_if_links_exist(page)
    expect(page.cheerful_ghost_logo.exists?).to be(true)
    expect(page.games_nav.exists?).to be(true)
    expect(page.forums_nav.exists?).to be(true)
    expect(page.interviews_nav.exists?).to be(true)
    expect(page.roundtable_nav.exists?).to be(true)
    expect(page.membership_nav.exists?).to be(true)
    expect(page.events_nav.exists?).to be(true)
    expect(page.about_nav.exists?).to be(true)
    expect(page.login_button.exists?).to be(true)
  end

  it 'Exists on Games page' do
    mp_games_page = CGTest::MostPopularGamesPage.new(@br)
    mp_games_page.goto
    check_if_links_exist(mp_games_page)
  end

  it 'Exists on Forums page' do
    forums_page = CGTest::ForumsPage.new(@br)
    forums_page.goto
    check_if_links_exist(forums_page)
  end

  it 'Exists on Interviews page' do
    interviews_page = CGTest::InterviewsPage.new(@br)
    interviews_page.goto
    check_if_links_exist(interviews_page)
  end

  it 'Exists on Roundtable page' do
    roundtable_page = CGTest::RoundtablePage.new(@br)
    roundtable_page.goto
    check_if_links_exist(roundtable_page)
  end

  it 'Exists on Membership page' do
    membership_page = CGTest::MembershipPage.new(@br)
    membership_page.goto
    check_if_links_exist(membership_page)
  end

  it 'Exists on Events page' do
    events_page = CGTest::EventsPage.new(@br)
    events_page.goto
    check_if_links_exist(events_page)
  end

  it 'Exists on About page' do
    about_page = CGTest::AboutPage.new(@br)
    about_page.goto
    check_if_links_exist(about_page)
  end

  it 'Exists on Sign In page' do
    signup_page = CGTest::SignupPage.new(@br)
    signup_page.goto
    check_if_links_exist(signup_page)
  end
end
