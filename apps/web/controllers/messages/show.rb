module Web::Controllers::Messages
  class Show
    include Web::Action

    expose :message

    def call(params)
      if @message =  MessageRepository.new.find_by_url(params[:url])
        if message.viewed?
          MessageRepository.new.delete(message.id)
          wrong_link
        else
          MessageRepository.new.update(message.id, visits_count: message.visits_count + 1)
        end
      else
        wrong_link
      end
    end

    private

    def wrong_link
      self.status = 404
      self.body = "Wrong link!"
    end
  end
end
