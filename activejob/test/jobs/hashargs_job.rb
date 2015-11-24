require_relative '../support/job_buffer'

class HashargsJob < ActiveJob::Base
  def perform(args)
    JobBuffer.add("Job with hash args: #{args.inspect}")
  end
end
