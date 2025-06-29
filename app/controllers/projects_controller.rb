class ProjectsController < ApplicationController
  allow_browser versions: :modern
  # before_action :set_project, only: %i[ show edit update destroy ]

  # GET /projects or /projects.json
  def index
    @projects = ProjectCategory.includes(:projects).order(:name)
  end
end
