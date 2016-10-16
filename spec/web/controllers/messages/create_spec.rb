require_relative '../../../../apps/web/controllers/messages/create'

RSpec.describe Web::Controllers::Messages::Create do
  let(:action) { described_class.new }
  
  before do
    MessageRepository.clear
  end

  context 'when not valid params' do
    let(:params) { Hash[message: {}] }
    it 'is failure' do
      response = action.call(params)
      expect(response[0]).to eq 422
    end
  end
  
  context 'when valid params' do
    let(:params) { Hash[message: {text: 'New Message!', hours_to_destroy: 2, password: '123', encrypted: 'true'}] }
    it 'is successful' do
      response = action.call(params)
      expect(response[0]).to eq 200
    end
  end
end
