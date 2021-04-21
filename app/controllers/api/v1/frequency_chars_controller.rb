class Api::V1::FrequencyCharsController < ApplicationController
  def index
    @frequency_chars = GetFrequencyChars.call
    render json: @frequency_chars
  end
end
