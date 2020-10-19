require 'rails_helper'

RSpec.describe Post, type: :model do
  # 測試是否能 create Post 
  it "accessible" do
    post = Post.create!
    expect(post).to eq(Post.last)
  end

  # 
  it "has title and content columns" do
    columns = Post.column_names
    # column_name 取得 ['id', 'title', 'content']
    expect(columns).to include('id')
    expect(columns).not_to include('idst')
    expect(columns).to include('title')
    expect(columns).to include('content')
  end
end
