class CreateFeedbacks < ActiveRecord::Migration[7.0]
  def change
    create_table :feedbacks do |t|
      t.text :desc
      t.datetime :data
      t.boolean :resolvido
      t.string :usuario

      t.timestamps
    end
  end
end
