class Person
    @@properties = []
    attr_accessor :bank_account, :hygiene
    attr_reader :name, :happiness

    def initialize(name)
        @name=name
        @bank_account = 25
        @hygiene = 8
        @happiness = 8
    end

    def happiness=(happiness)
            if happiness >10
                @happiness = 10
            elsif happiness <0
                @happiness=0
            else
                @happiness=happiness
        end
    end

    def hygiene=(hygiene)
        if hygiene >10
            @hygiene = 10
        elsif hygiene <0
            @hygiene=0
        else
            @hygiene=hygiene
    end

    def happy?
        if happiness >7
            return true
        else
            return false
        end
    end

    def clean?
        if hygiene >7
            return true
        else
            return false
        end
    end

    def get_paid(salary)
        @bank_account+=salary
        return "all about the benjamins"
    end

    def take_bath
        self.hygiene+=4
        if @hygiene>10
            @hygiene=10
        end
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene-=3
        self.happiness+=2
        return "♪ another one bites the dust ♫"
    end

    def call_friend(person_instance)
        self.happiness+=3
        person_instance.happiness+=3
            return "Hi #{person_instance.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(start, topic)
        if topic=="politics"
            self.happiness-=2
            start.happiness-=2
            return "blah blah partisan blah lobbyist"
        elsif 
            topic=="weather"
            self.happiness+=1
            start.happiness+=1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end
            





end


    


end
