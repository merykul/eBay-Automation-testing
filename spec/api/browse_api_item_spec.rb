# frozen_string_literal: true

describe 'Item: Browse Api' do
  context 'when get item by legacy id' do
    before(:all) do
      @response = RequestApi.new.get_by_legacy_id(110552832245)
    end

    let(:response_body) { JSON(@response.body) }

    it 'checks response code' do
      expect(@response.code).to eq 200
    end

    it 'checks response body' do
      expect(response_body['categoryPath']).to eq('Cameras & Photo|Camera Drones')
      expect(response_body['title']).to eq('Protocol Kaptur GPS II Wi-Fi Drone with HD Camera')
    end
  end
end