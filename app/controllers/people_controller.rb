class PeopleController < ApplicationController

  def new
    
  end

  def create
    @person = Person.create(params[:person])
  end


end