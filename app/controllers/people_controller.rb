class PeopleController < ApplicationController

  def new
    @person = Person.new
  end

  def create
    binding.pry
    @person = Person.create(person_params)
  end

  def person_params
    params.require(:person).permit(:name, :city_id)
  end


end