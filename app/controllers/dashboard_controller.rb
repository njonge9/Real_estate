class DashboardController < ApplicationController
   before_action :set_sidebar, except: [:show]
  def index
  end

  def reports
  end

  def properties
  end

  private

  def set_sidebar
    @show_sidebar = true
  end
end
