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

  def show
    @publisher = Publisher.find(params[:id])
    render json: @publisher
  end

  def destroy
    @publisher = Publisher.find(params[:id])
    @publisher.destroy
  end

  private

  def publisher_params
    params.require(publisher).permit(name, established, gamestore)
  end
end
