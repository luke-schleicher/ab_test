class AddMetricsToEmployees < ActiveRecord::Migration[5.0]
  def change
    change_table :employees do |t|
      t.column :weight, :integer
      t.column :hdl, :integer
      t.column :ldl, :integer
      t.column :glucose, :integer
      t.column :diastolic, :integer
      t.column :systolic, :integer
      t.column :score, :integer
    end
  end
end
