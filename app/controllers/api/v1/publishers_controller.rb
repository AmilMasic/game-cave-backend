class API::V1::PublishersController < ApplicationController

  def index
    @publishers = Publisher.all
    render json: @publishers
  end

  def create
    @publisher = Publisher.new(publisher_params)
    if @publisher.save
      render json: @publisher
    else
      render json: { error: 'Error creating publisher.'}
  end

  def new

  end

  def show

  end

  private

  def publisher_params
    params.require(publisher).permit(name, established, gamestore)
  end
end
