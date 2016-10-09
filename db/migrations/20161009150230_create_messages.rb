Hanami::Model.migration do
  change do
    create_table :messages do
      primary_key :id
      column :text, String, null: false
      column :url, String, size: 16, null: false
      
      index :url, unique: true
    end
  end
end
