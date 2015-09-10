require 'rails_helper'

RSpec.describe Post, :type => :model do

  before do 
    FactoryGirl.create(:post, title: "unique", content: "lorem ipsum", published: true)
  end
  
  it 'has a valid factory' do 
    expect(build(:post)).to be_valid
  end

  it 'is invalid without title' do 
    expect(build(:post, title: nil)).to_not be_valid
    expect(build(:post, content: nil)).to_not be_valid
  end

  it 'is valid uniqueness title' do 
    expect(build(:post, title: 'unique')).not_to be_valid
  end
end
