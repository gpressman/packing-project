class SuggestionsController < ApplicationController
  def show
  	@suggestion = Suggestion.find(params[:id])
  end

  def new 
  	@suggestion = Suggestion.new
  end

  def create
  	@suggestion = Suggestion.new
  	@suggestion = Suggestion.create
  end

  private
  def suggestion_params
  	params.require(:suggestion).permit(:name)
  end
end
