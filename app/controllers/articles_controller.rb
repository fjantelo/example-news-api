class ArticlesController < ApplicationController
  def index
    response = HTTP.get("https://newsapi.org/v2/everything?q=#{params[:search_term]}&apiKey=API-KEY")
    render json: response.parse(:json)
  end
end
