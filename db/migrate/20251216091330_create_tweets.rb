class CreateTweets < ActiveRecord::Migration[7.1]
  def change
    create_table :tweets do |t|
      t.string :name
      t.integer :year
      t.string :profile
      t.string :place
      t.string :job
      t.string :hobby
      t.string :active, null: true, default: "true"

      t.timestamps
    end
  end
end
