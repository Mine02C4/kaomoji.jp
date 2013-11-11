class CreateKaomojies < ActiveRecord::Migration
  def change
    create_table :kaomojies do |t|
      t.string :kaomoji, :null => false, :unique => true
      t.datetime :registered_time, :null => false
      t.datetime :published_time, :null => false
      t.integer :status, :null => false
      t.boolean :has_words, :null => false

      t.timestamps
    end

    create_table :feelings do |t|
      t.string :name, :null => false, :unique => true

      t.timestamps
    end

    create_table :feelings_kaomojies do |t|
      t.belongs_to :feeling
      t.belongs_to :kaomoji
    end

    create_table :readings do |t|
      t.string :reading, :null => false, :unique => true

      t.timestamps
    end

    create_table :kaomojies_readings do |t|
      t.belongs_to :kaomoji
      t.belongs_to :reading
    end
  end
end
