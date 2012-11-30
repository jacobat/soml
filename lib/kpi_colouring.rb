class KpiColouring
  attr_reader :kpi, :kpi_value

  def initialize(kpi, kpi_value)
    @kpi, @kpi_value = kpi, kpi_value
  end

  def state
    if kpi_value && kpi.threshold <= kpi_value.value
      :achieved
    else
      :missed
    end
  end
end
