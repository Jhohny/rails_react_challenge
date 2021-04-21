class GetPeople < ApplicationService
  Person = Struct.new(:full_name, :email, :job_title, keyword_init: true)

  def initialize
    @people = Rest::Salesloft::Client.new.get_people
  end

  def call
    @people[:data].map do |p|
      Person.new(
        full_name: "#{p[:first_name]} #{p[:last_name]}",
        email: p[:email_address],
        job_title: p[:title]
      )
    end
  end
end
