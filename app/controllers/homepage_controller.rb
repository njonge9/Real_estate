class HomepageController < ApplicationController
  def main
    @properties = Property.all
  end
end
