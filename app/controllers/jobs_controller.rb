class JobsController < ApplicationController
  # layout 'application'
  def index
    if params[:search]
      @search = params[:search]
      @results = IndeedAPI.search_jobs(q: params[:search]).results
    else
      @results = nil
    end
  end
end
