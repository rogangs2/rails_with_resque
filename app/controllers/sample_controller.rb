class SampleController < ApplicationController

  def job
    @samples = Sample.all
    # normal job
    CreateRecordJob.perform_later("rogan11", "rogangs211", 9340611)
    # delayed job
    # CreateRecordLaterJob.set(wait: 1.minute).perform_later
    # create_delete_schedule
    # perform with hooks
    # DeleteRecordJob.perform_later()
  end


  # cron job
  def create_delete_schedule
    @config = {}
    @config[:class] = 'SampleJob'
    @config[:every] = ['5m', {first_in: 5.minutes}]
    @config[:persist] = true
    @config[:queue] = "recurring_queue"
    Resque.set_schedule('delete_record_every_5min', @config)
  end
end
