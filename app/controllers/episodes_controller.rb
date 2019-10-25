class EpisodesController < ApplicationController
  before_action :find_episode, only: [:show, :edit]
  def index
    @episodes = Episode.all
  end

  def new 
    @episode = Episode.new
  end

  def create 
    @episode = Episode.new(episode_params)
    if @episode.save
      redirect_to @episode
    else
      render :new
    end
  end

  def show
  end

  def edit
  end


  def update
    if @episode.update(episode_params)
      redirect_to @episode
    else
      render 'edit'
    end
  end

  def destroy
    @episode.destroy
    redirect_to episodes_path
  end


  private 

  def find_episode
    @episode = Episode.find(params[:id])
  end

  def episode_params
    params.require(:episode).permit(:date,:number)
  end

end
