module Web::Controllers::Messages
  class Show
    include Web::Action

    expose :message

    def call(params)
      if @message =  MessageRepository.find_by_url(params[:url])
        if message.viewed?
          MessageRepository.delete(message)
          wrong_link
        else
          message.visits_count += 1
          MessageRepository.update(message)
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
