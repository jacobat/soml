class CreateKpis < ActiveRecord::Migration
  def change
    create_table :kpis do |t|
      t.string :name
      t.float :threshold

      t.timestamps
    end
  end
end
