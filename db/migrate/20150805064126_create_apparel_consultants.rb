class CreateApparelConsultants < ActiveRecord::Migration
  def change
    create_table :apparel_consultants do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
