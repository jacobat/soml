class ScorecardsController < ApplicationController
  def show
    @regions = Region.all
    @kpis = Kpi.all
  end
end
