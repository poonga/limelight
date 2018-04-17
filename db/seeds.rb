# make sure you log into the app before you run rails db:seed
user = User.first
company = user.company

teams = 10.times.map do
  Team.create(company_id: company.id, name: Faker::Job.field)
end

50.times.each do |t|
  posting = JobPosting.create(
    title: Faker::Job.title,
    employment_type: JobPosting.employment_types.keys.sample,
    description: Faker::Lorem.paragraph,
    min_salary: Faker::Number.decimal(5, 2),
    years_of_experience: Faker::Number.between(0, 20),
    applicants_count: 0,
    team_id: teams.sample.id,
    company_id: company.id,
    created_at: Faker::Number.between(0, 90).days.ago
  )
end

fake_resume = File.new(Rails.root.join('public', 'resumes', 'resume3.pdf'))

JobPosting.all.each do |posting|
  25.times do
    Applicant.create(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      email: Faker::Internet.email,
      status: Applicant.statuses.keys.sample,
      resume: ActionDispatch::Http::UploadedFile.new(
        filename: File.basename(fake_resume),
        tempfile: fake_resume,
        type: 'application/pdf'
      ),
      phone_number: Faker::PhoneNumber.cell_phone,
      website_url: Faker::Avatar.image,
      linkedin_url: Faker::Avatar.image,
      job_posting_id: posting.id,
      created_at: Faker::Number.between(0, 90).days.ago
    )
  end
end
