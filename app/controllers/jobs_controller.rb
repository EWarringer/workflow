class JobsController < ApplicationController
  # layout 'application'
  def index
    @api = IndeedAPI
  end
end
