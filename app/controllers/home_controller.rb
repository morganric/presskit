class HomeController < ApplicationController
  def index
    @users = User.all

    @releases = Release.all

    # @releases_json = render json: Release.all

  end

  def welcome
    # @releases = Release.all
    @releases = Release.where("DATE(embargo_date) < DATE(?)", Time.now)


    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @releases }
    end
  end
end
