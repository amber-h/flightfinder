
require 'spec_helper'

describe Learninglog do
  describe 'validations' do

    context 'when learning log content is nil' do
      it 'should be invalid' do
        learninglog = FactoryGirl.build_stubbed(:learninglog, content: nil)
        expect(learninglog.valid?).to be_false
      end
    end

    context 'when learning log content is present' do
      it 'should be valid if required attributes exist' do
        learninglog = FactoryGirl.build_stubbed(:learninglog)
        expect(learninglog.valid?).to be_true
       end
    end

  end
end
