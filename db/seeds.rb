User.create!(user_name: "bob", email: "test@test.com", password: "asdfasdf")

10.times do |lead|
  Lead.create!(
    name: "bob: #{lead}",
    company: "coolcompany: #{lead}",
    website_url: "cool.#{lead}.com",
    phone: "#{lead}: 444-3333",
    email: "cool@company#{lead}.com",
    address: "200 cool st",
    state: "CC",
    zip: 84542,
    lead_source: "facebook",
    website_goals: "Curabitur blandit tempus porttitor. Aenean lacinia bibendum nulla sed consectetur. Maecenas sed diam eget risus varius blandit sit amet non magna. Nullam quis risus eget urna mollis ornare vel eu leo."
  )

end
