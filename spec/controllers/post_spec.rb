require "rails_helper"

RSpec.describe PostsController, type: :controller do
    it "#index" do
        get :index 
        expect(response.status).to be 200
        expect(response).to render_template :index

    end
end