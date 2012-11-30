class KpiValuesController < ApplicationController
  def new
    @kpi_value = KpiValue.new(:region => Region.find(params[:region_id]))
  end

  def create
    @region = Region.find(params[:region_id])
    @kpi_value = @region.kpi_values.create(params[:kpi_value])
    redirect_to regions_path
  end
end
