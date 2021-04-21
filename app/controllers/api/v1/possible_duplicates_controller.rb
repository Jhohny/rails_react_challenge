class Api::V1::PossibleDuplicatesController < ApplicationController
  def index
    @possible_duplicates = GetPossibleDuplicates.call
    render json: @possible_duplicates
  end
end
