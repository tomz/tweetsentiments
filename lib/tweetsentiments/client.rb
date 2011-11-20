module Tweetsentiments
  class Client < API
    @token = nil
    
    def token
      @token
    end
    
    def login(username, password)
      response = get("login", {:username=>username, :password=>password})
      @token = response["token"]
    end
    
    def rate_limit(options={})
      response = get("rate_limit", options)
    end
    
    def classify(text, type=:sentiment, options={})
      response = get("classify/type", options.merge(:text => text))
    end
    
    def classify_simple(text, type=:sentiment, options={})
      response = get("classify_simple/type", options.merge(:text => text))
    end
    
    def classify_all(text, options={})
      response = get("classify_all", options.merge(:text => text))
    end
    
    def lang_detect(text, options={})
      response = get("lang/detect", options.merge(:text => text))
    end
    
    def lang_detect_multi(text, options={})
      response = get("lang/detect_multi", options.merge(:text => text))
    end
    
    def analyze(text, options={})
      response = get("analyze", options.merge(:text => text))
    end
    
    def search(options={})
      response = get("search", options)
    end
    
  end
end
