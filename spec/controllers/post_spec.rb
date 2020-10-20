require "rails_helper"

RSpec.describe PostsController, type: :controller do
    before(:all) do
        @post1 = Post.create(title: "title1", content: "content1")
        @post2 = Post.create(title: "title2", content: "content2")
    end

    it "#index" do
        get :index 
        expect(response.status).to be 200
        expect(response).to render_template :index
    end

    it '#new' do
        get :new
        expect(response.status).to be 200
        expect(response).to render_template :new
    end

    it '#edit' do
        get :edit, params: { id: @post1[:id]}
        expect(response.status).to be 200
        expect(response).to render_template :edit
    end

    describe "#create" do
        before(:all) do
            @post_params = {title: "title", content: "content"}
        end

        it "creates record" do 
            expect{ post :create, params:{ post: @post_params }}.to change{Post.all.size}.by(1)
        end

        it "redirect on success" do
            post :create, params: { post: @post_params }
            expect( response.status ).not_to be 200
            expect( response.status ).to be 302
            expect( response ).to redirect_to post_path Post.last
        end

    end
end