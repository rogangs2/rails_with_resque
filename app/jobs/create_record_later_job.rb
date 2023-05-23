class CreateRecordLaterJob < ApplicationJob
  queue_as :later

  def perform()
    Sample.create(name: "ramesh111", email: "ramesh11@gmail.com", number: 523479)
  end
end
