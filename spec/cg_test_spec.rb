require 'spec_helper'

describe 'CGTest' do
  it 'Gotos Root URL' do
    pr = CGTest::RootPage.new(@br)
    pr.goto
    expect(@br.url).to eq pr.base_url
  end
end
