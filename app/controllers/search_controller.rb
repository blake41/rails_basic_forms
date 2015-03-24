class SearchController < ApplicationController

  def root
    
  end

  def search
    @person = Person.find_by_name(params[:name]) || Person.new(:name => "default person")
  end

end