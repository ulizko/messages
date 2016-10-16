class ExpiredWorker
  include Sidekiq::Worker

  def perform
    messages = MessageRepository.expired
    messages.each do |m|
      MessageRepository.delete(m)
    end
  end
end