class CreateMicroappDbs < ActiveRecord::Migration[6.1]
  def change
    create_table :microapp_dbs do |t|
      t.string :Author
      t.string :Title
      t.string :CreationDate

      t.timestamps
    end
  end
end
