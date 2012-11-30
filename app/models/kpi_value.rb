class KpiValue < ActiveRecord::Base
  belongs_to :region
  belongs_to :kpi
  attr_accessible :value, :region_id, :region, :kpi, :kpi_id
end
