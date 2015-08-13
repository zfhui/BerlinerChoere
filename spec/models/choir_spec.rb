require 'rails_helper'

describe Choir do
  subject(:choir) { FactoryGirl.create(:choir) }
  let(:geo) { stub(:geocode) }
  let(:mail) {stub(:send_approve_mail)}


  it { should be_valid }

  it { should validate_presence_of :name }
  it { should validate_uniqueness_of :name }

  it { should validate_presence_of :zipcode }
  it { should validate_presence_of :category }
  it { should validate_presence_of :street_name }

  context 'when :name is not present' do
    before { choir.name = '' }
    it { should be_invalid }
  end

  context 'when :zipcode is not present' do
    before { choir.zipcode = '' }
    it { should be_invalid }
  end

  context 'when :category is not present' do
    before { choir.category_id = '' }
    it { should be_invalid }
  end

  context 'when :street_name is not present' do
    before { choir.street_name = '' }
    it { should be_invalid }
  end

  it 'calls geocode after validation' do
    expect(choir).to receive(:geocode)
    choir.validate
  end

  context 'new choir application' do
    let (:new_choir) { FactoryGirl.build(:new_choir) }

    it 'calls send_approve_mail after create' do
      expect(new_choir).to receive(:send_approve_mail)
      new_choir.save
    end
  end
end
