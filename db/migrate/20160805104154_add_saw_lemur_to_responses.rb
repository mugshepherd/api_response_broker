class AddSawLemurToResponses < ActiveRecord::Migration
  def change
    add_column :responses, :saw_captive_lemur, :string
  end
end
