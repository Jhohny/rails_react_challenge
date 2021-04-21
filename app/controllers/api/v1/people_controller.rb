class Api::V1::PeopleController < ApplicationController
  def index
    @people = GetPeople.call
    render json: @people
  end
end
