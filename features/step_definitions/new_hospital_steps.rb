Dado("que eu entro na página de cadastro de hospitais") do
	visit '/hospitals/new'
end

Quando("eu adiciono as informações {string} e {string} e {string} e {string} e {string} e {string} e {string} e {string} e {string} e {string} e {string} e {string} e {string}") do 
|hosp_name, hosp_city, hosp_state, lattitude, longitude, a_plus, a_minus, b_plus, b_minus, o_plus, o_minus, ab_plus, ab_minus|
  fill_in 'hospital[hosp_name]', with: hosp_name
  fill_in 'hospital[hosp_city]', with: hosp_city
  fill_in 'hospital[hosp_state]', with: hosp_state
  fill_in 'hospital[lattitude]', with: lattitude
  fill_in 'hospital[longitude]', with: longitude
  fill_in 'hospital[a_plus]', with: a_plus
  fill_in 'hospital[a_minus]', with: a_minus
  fill_in 'hospital[b_plus]', with: b_plus
  fill_in 'hospital[b_minus]', with: b_minus
  fill_in 'hospital[o_plus]', with: o_plus
  fill_in 'hospital[o_minus]', with: o_minus
  fill_in 'hospital[ab_plus]', with: ab_plus
  fill_in 'hospital[ab_minus]', with: ab_minus
  click_button 'Create Hospital'
end

Então("devo ver a mensagem {string}") do |mensagem|
  expect(page).to have_content mensagem
end