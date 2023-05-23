class DeleteRecordJob < ApplicationJob
  extend JobHooks
  queue_as :default

  def perform()
   @samples = Sample.first.delete
  end
end
