class ResourcesController < ApplicationController
  allow_browser versions: :modern
  # before_action :set_resource, only: %i[ show edit update destroy ]

  # GET /resources or /resources.json
  def index
    @resources = ResourceCategory.includes(:resources).order(:name)
  end
end
