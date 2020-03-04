class NoShowsController < ApplicationController
   # only appears for business
  def create
    @no_show = NoShow.new
    @no_show.claim = @claim
    if @no_show.save
      redirect_to claim_path(@claim), notice: "No show report submitted."
    else
      redirect_to claim_path(@claim), notice: "Unknown error, please try again."
  end

  def destroy
    @no_show = NoShow.find(params[:id])
    @no_show.destroy
  end
end
