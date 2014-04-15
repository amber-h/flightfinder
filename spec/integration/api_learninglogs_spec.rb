require 'spec_helper'

describe LearninglogsController do
  let(:mock_learninglog) { mock_model(Learninglog, content: "Learning log content")}

  describe 'GET index' do
    it 'should contain json formatted learning logs' do
      Learninglog.stub(:all).and_return([mock_learninglog])
      get :index
      assert_response :success
      assert body == Learninglog.all.to_json
    end
  end
end
