module ErrorUtility
  def self.logger(error)
    Rails.logger.error error.class
    Rails.logger.error error.message
    Rails.logger.error error.backtrace.join("\n")
  end
end
