require "rails_helper"

RSpec.describe "posts/index.html.erb", type: :view do
    it "can render" do
        @post = Post.create(title: "hi", content: "content")

        @posts = Array.new(2 ,@post)

        render
        expect(rendered).to include("Title")
    end
end