class CreateDogSitterInscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :dog_sitter_inscriptions do |t|
      t.belongs_to :stroll, index: true
      t.belongs_to :dog_sitter, index: true
      t.timestamps
    end
  end
end
