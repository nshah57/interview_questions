require 'spec_helper'

describe InterviewQuestions::Request do

  it 'defines a class for request' do
    expect{ InterviewQuestions::Request}.to_not raise_error
  end
  
  it "creates a constructor to accept inputs" do
    expect{ InterviewQuestions::Request.new({a: 1})}.to_not raise_error
  end

  it "assigns the url and body attributes to request" do
    request = InterviewQuestions::Request.new({ url: 'http://www.foo.com', body: '<xml></xml>' })
    expect{ request.url }.to eq("http://www.foo.com")
    expect{ request.body }.to eq("<xml></xml>")
  end
end
