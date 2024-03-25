# seeds

[
  {name: "Sumus"},
  {name: "Wanabana"}
].each do |company|
  Company.where(name: company[:name]).first_or_create!
  puts "Creating company: #{company[:name]}"
end

[
  { company: Company.find_by(name: 'Sumus'), name: 'First quote' },
  { company: Company.find_by(name: 'Sumus'), name: 'Second quote' },
  { company: Company.find_by(name: 'Wanabana'), name: 'Third quote' }
].each do |quote_attributes|
  Quote.where(quote_attributes).first_or_create!
  puts "Creating Quote: #{quote_attributes[:name]}"
end

[
  { id: 1, email: 'accountant@sumus.com', password: 'password', created_at: Time.now, updated_at: Time.now, company_id: Company.find_by(name: 'Sumus').id },
  { id: 2, email: 'manager@sumus.com', password: 'password', created_at: Time.now, updated_at: Time.now, company_id: Company.find_by(name: 'Sumus').id },
  { id: 3, email: 'eavesdropper@wanabana.com', password: 'password', created_at: Time.now, updated_at: Time.now, company_id: Company.find_by(name: 'Wanabana').id }
].each do |user_attributes|
  user_name = user_attributes[:email].split("@").first.capitalize
  puts "Creating User: #{user_name}"
  User.where(email: user_attributes[:email]).first_or_create!(user_attributes.except(:email))
end
