class AddFaceColumnsToInfos < ActiveRecord::Migration
  def change
    change_table :infos do |t|
      t.float :smile
    end
  end
end
