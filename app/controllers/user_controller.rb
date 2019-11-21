class UserController < ApplicationController
  def profile
  end

  def points
  end

  def nivelsangue (bloodtype,city,state)
    
    bloodbanks = []

    hosps = ""
    case bloodtype
      when "A+"
        bloodbanks = Hospital.where(a_plus: + ' < 30', hosp_city: city, hosp_state: state ).pluck(:hosp_name)
      when "A-"
        bloodbanks = Hospital.where(a_minus: + ' < 30', hosp_city: city, hosp_state: state ).pluck(:hosp_name)
      when "B+"
        bloodbanks = Hospital.where(b_plus: + ' < 30', hosp_city: city, hosp_state: state ).pluck(:hosp_name)
      when "B-"
        bloodbanks = Hospital.where(b_minus: + ' < 30', hosp_city: city, hosp_state: state ).pluck(:hosp_name)
      when "O+"
        bloodbanks = Hospital.where(o_plus: + ' < 30', hosp_city: city, hosp_state: state ).pluck(:hosp_name)
      when "O-"
        bloodbanks = Hospital.where(o_minus: + ' < 30', hosp_city: city, hosp_state: state ).pluck(:hosp_name)
      when "AB+"
        bloodbanks = Hospital.where(ab_plus: + ' < 30', hosp_city: city, hosp_state: state ).pluck(:hosp_name)
      when "AB-"
        bloodbanks = Hospital.where(ab_minus: + ' < 30', hosp_city: city, hosp_state: state ).pluck(:hosp_name)
      else 
    end 

    if bloodbanks.length == 0
      return ""
    else 
      for i in 0..(bloodbanks.length-1)
        hosps += bloodbanks[i]
        hosps += ", "
      end 
    end
    return hosps
  end
  helper_method :nivelsangue
end
