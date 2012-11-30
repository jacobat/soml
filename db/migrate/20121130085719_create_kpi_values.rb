class CreateKpiValues < ActiveRecord::Migration
  def change
    create_table :kpi_values do |t|
      t.references :region
      t.references :kpi
      t.float :value

      t.timestamps
    end
    add_index :kpi_values, :region_id
    add_index :kpi_values, :kpi_id
  end
end
