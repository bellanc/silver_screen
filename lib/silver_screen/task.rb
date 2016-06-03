module SilverScreen

  module TaskHarness; end

  class Task

    def self.define_task_tenses(*names)
      task_class = self
      names.each do |name|
        TaskHarness.send(:define_method, name) do |*params|
          task_class.new(*params)
        end
      end
    end

  end
end


