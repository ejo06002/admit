class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
   	  t.integer :applicant_id
   	  t.string :subject
   	  t.text :q_content

      t.timestamps


    end
  end
end
