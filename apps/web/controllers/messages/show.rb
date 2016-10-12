module Web::Controllers::Messages
  class Show
    include Web::Action
    
    expose :message

    def call(params)
      @message = MessageRepository.find_by_url(params[:url])
    end
  end
end
