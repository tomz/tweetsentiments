module Tweetsentiments
  class Client < API
    def classify(text, options={})
      response = get("classify", options.merge(:text => text))
      {:sentiment=>response["sentiment"], :translated_text=>response["translate_text"].to_s } 
    end
    def classify_simple(text, options={})
      response = get("classify_simple", options.merge(:text => text))
      response["value"]
    end
    def analyze(text, options={})
      response = get("analyze", options.merge(:text => text))
    end
    def search(options={})
      response = get("search", options)
    end
  end
end
