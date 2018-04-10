# make sure you log into the app before you run rails db:seed
user = User.first
company = user.company

teams = 10.times.map do
  Team.create(company_id: company.id, name: Faker::Job.field)
end

500.times do
  JobPosting.create(
    title: Faker::Job.title,
    employment_type: JobPosting.employment_types.keys.sample,
    description: Faker::Lorem.paragraph,
    min_salary: Faker::Number.decimal(5, 2),
    years_of_experience: Faker::Number.between(0, 20),
    applicants_count: 0,
    team_id: teams.sample.id,
    company_id: company.id
  )
end


