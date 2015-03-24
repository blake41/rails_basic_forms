class PeopleController < ApplicationController

  def new
    
  end

  def create
    binding.pry
    @person = Person.create(params[:person])
  end


end