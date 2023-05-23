class CreateRecordJob < ApplicationJob
  queue_as :default

  def perform(name, email, number)
    Sample.create(name: name, email: email, number: number)
  end
end
