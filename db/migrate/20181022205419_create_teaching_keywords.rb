class CreateTeachingKeywords < ActiveRecord::Migration[5.2]
  def change
    create_table :teaching_keywords do |t|

      t.timestamps
    end
  end
end
