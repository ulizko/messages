module Web::Controllers::Messages
  class Create
    include Web::Action
    
    expose :message
    
    params do
      required(:message).schema do
        required(:text).filled
      end
    end

    def call(params)
      if params.valid?
        prying(params)
        @message = MessageRepository.create(Message.new(params[:message]))
        # redirect_to '/link'
      else
        self.status = 422
      end
    end
    
    def prying(params)
       binding.pry
    end
  end
end
