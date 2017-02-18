class JobsController < ApplicationController
  # layout 'application'
  def index
    @api = IndeedAPI
    if params[:search]
      binding.pry
    else
      binding.pry
    end
  end
end
