class Person

    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8 
        @hygiene = 8
    end

    def happiness=(points)
        @happiness = points
        @happiness = 10 if @happiness > 10
        @happiness = 0 if @happiness < 0
    end

    def hygiene=(points)
        @hygiene = points
        @hygiene = 10 if @hygiene >10
        @hygiene = 0 if @hygiene < 0
    end

    def clean?
        @hygiene > 7
    end

    def happy?
        @happiness > 7
    end

    def get_paid(salary)
        self.bank_account += salary
        self.happiness += 1
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(caller)
        [caller, self].each {|i| i.happiness += 3}
        "Hi #{caller.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        conversations = [self, person]
            if topic == "politics"
                conversations.each {|i| i.happiness -= 2}
                first, second = ["partisan", "lobbyist"]
                "blah blah #{first} blah #{second}"
            elsif topic == "weather"
                conversations.each {|i| i.happiness += 1}
                first, second = ["sun", "rain"]
                "blah blah #{first} blah #{second}"
            else 
                "blah blah blah blah blah"
            end
    end
end