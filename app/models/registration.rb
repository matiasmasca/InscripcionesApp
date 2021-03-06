class Registration < ActiveRecord::Base
  belongs_to :group

#Datos obligatorios:
  validates :colonist_name, :colonist_age, :colonist_birtday, :colonist_gender, :colonist_dni, :colonist_address, :colonist_telephone, :colonist_email, :colonist_school_name, :colonist_grade, :colonist_school_address, :colonist_school_phone, :colonist_swim_school, :colonist_swim_leave_reasons, :how_know_us, :parents_relation, :father_name, :father_age, :father_lives, :father_visit, :father_email, :father_profession, :father_work_phone, :mother_name, :mother_age, :mother_lives, :mother_visit, :mother_email, :mother_profession, :mother_work_phone, :who_register, :i_attest , presence: { message: "es un dato obligatorio."}
  
#Datos numericos,
  validates :colonist_age, :colonist_grade, :father_age, :mother_age, numericality: { only_integer: true, greater_than: 2, less_than: 110, message: "debe ser un número entre 2 y 110." }
  validates :colonist_dni, numericality: { only_integer: true, greater_than: 30_000_000, less_than: 100_000_000, message: "debe ser solo números entre 30000000 y 100000000. Sin puntos, ni rayas ni espacios." } 
  validates :colonist_telephone, :colonist_school_phone, :father_work_phone , :mother_work_phone, numericality: { only_integer: true, message: "Ingrese solo digitos en el número de teléfono, sin puntos, rayas o espacios." }

# Validar Booleanos.
  validates :colonist_doctor, :colonist_know_swim, inclusion: { in: [true, false], message: "es obligatorio, seleccione una opción."}

#formato email valido
  validates :colonist_email, :father_email, :mother_email, format: { with: /\A[\w+\-.]+@[a-z\d\-.]{2,}+\.[a-z]{2,3}\Z/i , message: "(dirección de correo electrónico) es invalido."}
  #\A inicio con cadena.
  # [\w+\-.] caracter de palabra, un guio o un punto.
  # @ un arroba
  # [a-z\d\-.] almenos una letra, un guion
  # {2,} minimo 2 caracteres.
  # \. que haya al menos 1 punto "."
  # [a-z]{2,3} que haya entre 2 y 3 letras seguidas: ar, com, etc.
  # /i pueden ser letras mayusculas o minusculas.

#Nombres sin Numeros
  validates :colonist_name, :father_name, :mother_name, :father_profession, :mother_profession, format: { with: /\A(\D+)\z/xi, message: "es invalido porque el campo tiene un número, ingrese solo letras."}
  validates :colonist_medical_insurance, format: { with: /\A(\D+)\z/xi, message: "es invalido porque el campo tiene algun número, ingrese solo letras en el nombre."}

# DNI Unico 
  validates :colonist_dni, uniqueness: { case_sensitive: false, message: "ese DNI ya está siendo utilizado." }

# Cadena con Letras: debe tener letras, no puede ser solo numeros.
  validates :colonist_address, format: { with: /([a-zA-Z]+)([\d]*)/i , message: "(dirección) es invalido, usted ingresó solo digitos sin letras."}


# Campos.
# :colonist_name
# :colonist_age
# :colonist_birtday
# :colonist_gender
# :colonist_dni
# :colonist_address
# :colonist_telephone
# :colonist_email
# :colonist_school_name
# :colonist_grade
# :colonist_school_address
# :colonist_school_phone
# :colonist_medical_insurance
# :colonist_trauma
# :colonist_surgery
# :colonist_illness_asthma
# :colonist_illness_allergy
# :colonist_illness_heart_failure
# :colonist_illness_diabetes
# :colonist_illness_other
# :colonist_medical_observation
# :colonist_doctor
# :colonist_know_swim
# :colonist_swim_school
# :colonist_swim_leave_reasons
# :how_know_us
# :parents_relation
# :father_name
# :father_age
# :father_lives
# :father_visit
# :father_email
# :father_profession
# :father_work_phone
# :mother_name
# :mother_age
# :mother_lives
# :mother_visit
# :mother_email
# :mother_profession
# :mother_work_phone
# :who_register
# :i_attest
# :status, default: 1, null: false #1 pendiente, 2 aprobado, 3 rechazado 
# :group, index: true, foreign_key: true
end
