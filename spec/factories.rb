FactoryBot.define do
  factory :place do
    name { "MyString" }
    latitude { "9.99" }
    longitude { "9.99" }
  end

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