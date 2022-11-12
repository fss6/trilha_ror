module Status
    SUCCESS = 'success'
    ERROR = 'error'
end

OPTIONS = [Status::SUCCESS, Status::ERROR]

def randomize
    rand(0..1)
end

job_0 = -> { return OPTIONS[randomize] }
job_1 = -> { return OPTIONS[randomize] }
job_2 = -> { return OPTIONS[randomize] }

[job_0, job_1, job_2].each_with_index do |job, index|
    begin
        status = job.call
        puts "job: #{index}, status: #{status}"
        raise if status == Status::ERROR        
    rescue
        puts "retrying......"
        retry
    end
end



