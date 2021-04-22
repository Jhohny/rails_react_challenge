class GetCharsFrequency < ApplicationService
  def initialize
    @people = Rest::Salesloft::Client.new.get_people
  end

  def call
    result = Hash.new(0)
    emails_string.each_char do |c|
      result[c] += 1
    end

    result
  end

  def emails_string
    @people[:data].map { |p| p[:email_address] }.join
  end
end
