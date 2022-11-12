module Const
    SUCCESS = 'success'
    ERROR = 'error'
end

OPTIONS = [Const::SUCCESS, Const::ERROR]

def randomize
    rand(0..1)
end

job_0 = -> { return OPTIONS[randomize] }
job_1 = -> { return OPTIONS[randomize] }
job_2 = -> { return OPTIONS[randomize] }

[job_0, job_1, job_2].each_with_index do |job, index|
    status = job.call
    puts "job: #{index}, status: #{status}"
    redo if status == Const::ERROR
end