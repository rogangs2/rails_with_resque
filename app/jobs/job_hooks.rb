module JobHooks
  def before_enqueue_create_log
    Resque.logger.info " #{self} enqueing "
  end

  def after_enqueue_create_log
    Resque.logger.info " #{self} enqueued"
  end

  def before_dequeue_create_log
    Resque.logger.info " #{self}  dequeuing"
  end

  def after_dequeue_create_log
    Resque.logger.info " #{self}  dequeued"
  end

  def before_perform_create_log
    Resque.logger.info " #{self}  going to perform"
  end

  def after_perform_create_log
    Resque.logger.info " #{self}  job done"
  end
end