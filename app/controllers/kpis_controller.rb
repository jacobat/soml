class KpisController < ApplicationController
  def index
    @kpis = Kpi.all
  end

  def new
    @kpi = Kpi.new
  end

  def create
    @kpi = Kpi.create(params[:kpi])
    redirect_to kpis_path
  end
end
