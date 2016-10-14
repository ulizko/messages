module Web::Controllers::Messages
  class Show
    include Web::Action

    expose :message

    def call(params)
      if @message =  MessageRepository.find_by_url(params[:url])
        message.text = '' if message.viewed?
        if message.destroyed?
          wrong_link
        else
          message.visits_count += 1
        end
        MessageRepository.update(message)
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
