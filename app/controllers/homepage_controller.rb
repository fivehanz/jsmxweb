class HomepageController < ApplicationController
  allow_browser versions: :modern

  def index
    render plain: "Hello Hanz! \n\nthis is the new working rails app."
  end
end
