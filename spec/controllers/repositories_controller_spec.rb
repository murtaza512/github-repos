require 'rails_helper'

RSpec.describe RepositoriesController, type: :controller do
  describe "GET #index" do
    let(:search_term) { "rails" }

    context "when a search term is provided" do
      let(:search_results) { double("search_results", items: [{ name: "rails-repo", url: "https://github.com/rails/rails-repo" }]) }

      before do
        allow(Octokit).to receive(:search_repositories).with(search_term).and_return(search_results)
        get :index, params: { search: search_term }
      end

      it "calls Octokit.search_repositories with the search term" do
        expect(Octokit).to have_received(:search_repositories).with(search_term)
      end

      it "assigns the search results to @repositories" do
        expect(assigns(:repositories)).to eq(search_results.items)
      end

      it "renders the index template" do
        expect(response).to render_template(:index)
      end

      it "returns a JSON response when format is JSON" do
        get :index, params: { search: search_term }, format: :json
        expect(response.content_type).to eq("application/json; charset=utf-8")
      end
    end

    context "when search term is not provided" do
      before do
        get :index
      end

      it "assigns an empty array to @repositories" do
        expect(assigns(:repositories)).to eq([])
      end

      it "renders the index template" do
        expect(response).to render_template(:index)
      end

      it "returns a JSON response when format is JSON" do
        get :index, format: :json
        expect(response.content_type).to eq("application/json; charset=utf-8")
      end
    end
  end
end
