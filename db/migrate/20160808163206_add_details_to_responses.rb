class AddDetailsToResponses < ActiveRecord::Migration
  def change
    add_column :responses, :environment, :string
    add_column :responses, :captive_environment, :string
  end
end
