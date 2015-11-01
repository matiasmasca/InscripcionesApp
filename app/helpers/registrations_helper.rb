module RegistrationsHelper
  def boolean_to_text(boolean)
    if boolean == true
      "Si"
    else
      "No"
    end
  end

  ### Grupos Temporada.
  def grupos_temporada
    inicio_temporada = Date.new(2015,10,01)
    fin_temporada = Date.new(2016,03,31)
    grupos = Group.where(created_at: inicio_temporada..fin_temporada)
    #logger.debug ("ACA!!!!!!!!!!!!!grupos: #{grupos.inspect}")
  end
end
