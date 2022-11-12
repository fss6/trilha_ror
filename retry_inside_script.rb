module Status
    SUCCESS = 'success'
    ERROR = 'error'
end

OPTIONS = [Status::SUCCESS, Status::ERROR]

r = lambda { return rand(0..1) }
    
jobs = [
    lambda { return OPTIONS[r.call] },
    lambda { return OPTIONS[r.call] },
    lambda { return OPTIONS[r.call] }
]

begin
    jobs.each_with_index do |job, index|
        status = job.call
        puts "job: #{index}, status: #{status}"
        raise if status == Status::ERROR
    end
rescue
    puts ">>>>>>> retrying >>>>>>>"
    retry
end