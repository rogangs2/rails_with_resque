class SampleJob
  # queue_as :recurring_queue
  extend JobHooks

  def self.perform()
    Sample.first.delete
  end
end
