class Application
    def call(env)
        resp = Rack::Response.new

        resp.write "#{Time.now.strftime("%H:%M")}\n"

        if Time.now.strftime("%H:%M") < "12:00"
            resp.write "Good Morning!"
        else
            resp.write "Good Afternoon!"
        end 

        resp.finish
    end 
end 