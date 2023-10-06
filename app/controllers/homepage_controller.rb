class HomepageController < ApplicationController
  def main
    @properties = Property.latest
  end
end
