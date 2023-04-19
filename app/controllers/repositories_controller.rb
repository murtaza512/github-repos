require 'octokit'

class RepositoriesController < ApplicationController

  def index
    @repositories = params[:search].present? ? search(params[:search]) : []

    respond_to do |format|
      format.html
      format.json { render json: @repositories }
    end
  end

  private

  def search(term)
    Octokit.search_repositories(term).items
  end
end
