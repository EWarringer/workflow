class JobsController < ApplicationController
  # layout 'application'
  def index
    if params[:search]
      @search = params[:search]
      @results = IndeedAPI.search_jobs(q: params[:search],l: params[:location]).results
    else
      @results = nil
      @backlight
    end
  end
end
