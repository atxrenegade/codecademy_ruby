class Computer
    @@users = {}    
    def initialize(username, password)
        @username = username
        @password  = password
        @files = Hash.new
        @@users [username] = password
    end 
    def create(filename)
        time = Time.now
        @files[filename] = Time.now
        puts "\n#{@username} has created a new file called #{@files} at {#time}\n"
    end 
    def Computer.get_users
        return @@users
    end    
end   

my_computer = Computer.new("Harriet_the_spy", "007pbandj")
