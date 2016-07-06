class ChangeColumnNull < ActiveRecord::Migration
  def change
  	change_column_null :responses, :month_and_year, true
  end
end
