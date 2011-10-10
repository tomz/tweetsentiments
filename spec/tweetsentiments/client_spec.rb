require File.expand_path('../../spec_helper', __FILE__)

describe Tweetsentiments::Client do
  Tweetsentiments::Configuration::VALID_FORMATS.each do |format|
    context ".new(:format => '#{format}')" do
      before do
        @text = "I am happy"
        @user = "dhh"
        @topic = "ipad2"
        @client = Tweetsentiments::Client.new(:format => format)
      end
    
      describe ".classify(#{@text})" do
        before do
          stub_get("classify.#{format}").
            with(:query => {:text => @text}).
            to_return(:body => fixture("classify.#{format}"), :headers => {:content_type => "application/#{format}; charset=utf-8"})
        end
        it "should get the correct resource" do
          @client.classify(@text)
          a_get("classify.#{format}").
            with(:query => {:text => @text}).
            should have_been_made
        end
      end
      
      describe ".classify_simple(#{@text})" do
        before do
          stub_get("classify_simple.#{format}").
            with(:query => {:text => @text}).
            to_return(:body => fixture("classify.#{format}"), :headers => {:content_type => "application/#{format}; charset=utf-8"})
        end
        it "should get the correct resource" do
          @client.classify_simple(@text)
          a_get("classify_simple.#{format}").
            with(:query => {:text => @text}).
            should have_been_made
        end
      end

      describe ".analyze(#{@text})" do
        before do
          stub_get("analyze.#{format}").
            with(:query => {:text => @text}).
            to_return(:body => fixture("analyze.#{format}"), :headers => {:content_type => "application/#{format}; charset=utf-8"})
        end
        it "should get the correct resource" do
          @client.analyze(@text)
          a_get("analyze.#{format}").
            with(:query => {:text => @text}).
            should have_been_made
        end
      end

      describe ".search(#{@topic})" do
        before do
          stub_get("search.#{format}").
            with(:query => {:topic => @topic}).
            to_return(:body => fixture("search.#{format}"), :headers => {:content_type => "application/#{format}; charset=utf-8"})
        end
        it "should get the correct resource" do
          @client.search(:topic=>@topic)
          a_get("search.#{format}").
            with(:query => {:topic => @topic}).
            should have_been_made
        end
      end

      describe ".search(#{@user})" do
        before do
          stub_get("search.#{format}").
            with(:query => {:user => @user}).
            to_return(:body => fixture("search.#{format}"), :headers => {:content_type => "application/#{format}; charset=utf-8"})
        end
        it "should get the correct resource" do
          @client.search(:user=>@user)
          a_get("search.#{format}").
            with(:query => {:user => @user}).
            should have_been_made
        end
      end

    end
  end
end
