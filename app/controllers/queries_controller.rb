class QueriesController < ApplicationController
  
  def show
    @query = Query.find(params[:id])
  end
  
  def new
    @query = Query.new
  end
  
  def create
    @query = Query.new(params[:query])
    if @query.save
      redirect_to @query
    else
      render 'new'
    end
    
  end
end
