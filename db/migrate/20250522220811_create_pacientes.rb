class CreatePacientes < ActiveRecord::Migration[8.0]
  def change
    create_table :pacientes do |t|
      t.references :tutor, null: false, foreign_key: true
      t.string :nombre
      t.string :paternal_last_name
      t.string :maternal_last_name
      t.date :birth_date
      t.string :sexo
      t.string :nivel_discapacidad_cognitiva
      t.string :nivel_discapacidad_visual
      t.string :nivel_discapacidad_auditiva
      t.string :nivel_discapacidad_motriz_gruesa
      t.string :nivel_discapacidad_motriz_fina

      t.timestamps
    end
  end
end
