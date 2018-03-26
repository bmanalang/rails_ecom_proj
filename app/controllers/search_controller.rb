class SearchController < ApplicationController
  def index
    @search_terms= params[:q]

    @cupcakes = Cupcake.where('name LIKE ?', "%#{@search_terms}%")

  end
end
