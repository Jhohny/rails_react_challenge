class Api::V1::CharsFrequencyController < ApplicationController
  def index
    @chars_frequency = GetCharsFrequency.call
    render json: @chars_frequency
  end
end
