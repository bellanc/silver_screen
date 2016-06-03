module SilverScreen
  class Actor

    attr_reader :name, :abilities

    def initialize(actor_name)
      @name = actor_name
      @abilities = {}
      @notepad = {}
    end

    def self.named(actor_name)
      self.new(actor_name)
    end

    def can(do_something)
      do_something.as_actor(self)
      @abilities[do_something.class] = do_something
      self
    end

    def ability_to(do_something)
      @abilities[do_something]
    end

    def was_able_to(todos)
      self.attempts_to todos
    end

    def attempts_to(*tasks)
      tasks.each { |task| self.perform(task) }
    end


    def has(*todos)
      self.attempts_to todos
    end

    def perform(todo)
      todo.perform_as(self)
    end

    def asks_for(question)
      question.answered_by(self)
    end

    def remember_answer_to_question(key, question)
      answer = self.asks_for(question)
      @notepad[key] = answer
    end

    def remember(key, thing_to_remember)
      @notepad[key] = thing_to_remember
    end

    def recall(key)
      @notepad[key]
    end

    def saw_as_the(key)
      @notepad[key]
    end

    def gave_as_the(key)
      @notepad[key]
    end

  end
end