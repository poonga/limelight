class ResumeParser
  include Sidekiq::Worker

  # Generates an integer rank of the matching keywords between the job posting
  # and the applicant resume.
  # @return rank [Integer] The number of matching key words between the job and resume.
  def perform(job_posting_id, applicant_id)
    applicant = Applicant.find applicant_id
    job_posting = JobPosting.find job_posting_id

    resume_path = Rails.root.join('public/resumes/', applicant.resume.path).to_s
    reader = PDF::Reader.new(resume_path)
    resume_contents = reader.pages.map(&:text).join(' ')

    resume_keywords = Highscore::Content.new(resume_contents).keywords.map(&:text)
    job_keywords = Highscore::Content.new(job_posting.contents).keywords.map(&:text)

    rank = (job_keywords & resume_keywords).size
    applicant.update(rank: rank)
  end
end
