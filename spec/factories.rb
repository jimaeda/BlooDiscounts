FactoryBot.define do
	factory :user do
		first_name {"Leonardo"}
		last_name {"Moreira"}
		email {"leo@leo.com"}
		password {"leonardo"}
		bloodtype {1}
		birthdate {21.years.ago}
		weight {83}
		age {21}
		height {1.92}
		city {'São Paulo'}
		state {'São Paulo'}
		country {'São Paulo'}
	end
end

FactoryBot.define do
	factory :hospital do
		hosp_name {"Banco teste"}
		hosp_city {"sp"}
		hosp_state {"sp"}
		a_plus {0}
		a_minus {0}
		b_plus {0}
		b_minus {0}
		o_plus {0}
		o_minus {0}
		ab_plus {0}
		ab_minus {0}
		created_at {0}
		updated_at {0}
		lattitude {20}
		longitude {20}
	end
end