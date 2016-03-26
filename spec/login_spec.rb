describe 'Should Login' do
  it 'with Steam' do
    lwf = CGTest::LoginWorkflow.new(@br)
    rp = lwf.login_with_steam
    rp.logout
  end
end
