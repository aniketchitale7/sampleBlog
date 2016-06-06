class ProfilesController < ApplicationController

  def index
    @profiles = Profile.all

  end

  def show

    @profiles = Profile.find(params[:id])

  end

  def new
    @profiles = Profile.new
  end

  def create
    @profiles = Profile.new(article_params)

    if @profiles.save
      render 'new'

    else
      render 'new'
    end

  end

  private
  def article_params
    params.require(:profile).permit(:FirstName, :LastName, :Gender , :dateofbirth , :phone , :email)
  end
end