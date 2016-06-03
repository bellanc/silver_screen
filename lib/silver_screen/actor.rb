module SilverScreen
  class Actor

    attr_reader :name, :notepad, :abilities

    def initialize(actor_name)
      @name = actor_name
      @notepad = Hash.new
      @abilities = Hash.new
    end

    def self.named(actor_name)
      self.new(actor_name)
    end

    def perform(task)
      raise UnimplementedTaskException, "The perform_as method must be implemented on #{task}!" unless task.respond_to? :perform_as
      task.perform_as(self)
    end

    def has(*tasks)
      self.attempts_to *tasks
    end

    def was_able_to(*tasks)
      self.attempts_to *tasks
    end

    def attempts_to(*tasks)
      tasks.flatten.each { |task| self.perform(task) }
    end

    def remember(key, value)
      self.notepad.store(key, value)
    end

    def recall(key)
      self.notepad.fetch(key) { raise "#{self.name} does not recall knowing anything about #{key}." }
    end

    def should(*expectations)
      self
    end

    def can(do_something)
      do_something.as_actor(self)
      self.abilities.store(do_something.class, do_something)
      self
    end

    def ability_to(do_something)
      self.abilities.fetch(do_something) { raise "#{self.name} does not have the ability to #{do_something}!" }
    end

  end
end

class UnimplementedTaskException < StandardError ;end

