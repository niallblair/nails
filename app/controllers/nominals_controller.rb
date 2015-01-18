class NominalsController < ApplicationController
  def index
    @nominals = Nominal.all
  end

  def import
    Nominal.import(params[:file])
    redirect_to root_url, notice: "Nominals imported."
  end
end
