class HomepageController < ApplicationController
  allow_browser versions: :modern

  def index
    render :index
  end
end
