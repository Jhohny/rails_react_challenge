class GetPossibleDuplicates < ApplicationService
  def initialize
    @people = Rest::Salesloft::Client.new.get_people
  end

  def call
    result = []
    @people[:data].each do |first|
      @people[:data].each do |sec|
        next if first[:email_address] == sec[:email_address]

        mail, _domain = sec[:email_address].split('@')
        duplicate = first[:email_address].include?(mail)
        result.push({ email: first[:email_address], possible_duplicated: sec[:email_address] }) if duplicate
      end
    end

    result
  end

  def all_of_them
    @people[:data]
  end
end
