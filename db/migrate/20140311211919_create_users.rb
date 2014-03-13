class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.float :happiness
      t.float :health
      t.float :wealth
      t.float :culture
      t.float :drama
      t.float :location
      t.float :spirituality
      t.float :relationships
      t.float :activity
      t.float :reflectivity
      t.float :civilization
      t.float :passion
      t.float :control
      t.float :satisfaction
      t.float :self_view

      t.timestamps
    end
  end
end
