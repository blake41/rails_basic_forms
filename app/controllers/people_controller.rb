class PeopleController < ApplicationController

  def new
    @person = Person.new
  end

  def show
    @person = Person.find(params[:id])
  end

  def create
    binding.pry
    @person = Person.create(person_params)
    redirect_to(@person)
  end

  def person_params
    params.require(:person).permit(:name, :city_id)
  end


end