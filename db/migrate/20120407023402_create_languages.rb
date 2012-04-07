class CreateLanguages < ActiveRecord::Migration
  def self.up
    create_table :languages do |t|
      t.string :name, :null => false
      t.text :description

      t.timestamps
    end
    
    change_table :words do |t|
      t.references :language
      t.index :language_id
    end
    
    language = Language.create! :name => "Default Language"
    Word.update_all :language_id => language.id
    
    change_column :words, :language_id, :integer, :null => false
    
  end

  def self.down
    drop_table :languages
    remove_column :words, :language_id
  end
end
