require 'faraday'

# @private
module Faraday
  # @private
  class Response::RaiseHttp5xx < Response::Middleware
    def self.register_on_complete(env)
      env[:response].on_complete do |response|
        case response[:status].to_i
        when 500
          raise Tweetsentiments::InternalServerError, error_message(response, "Something is technically wrong.")
        when 502
          raise Tweetsentiments::BadGateway, error_message(response, "Tweetsentiments is down or being upgraded.")
        when 503
          raise Tweetsentiments::ServiceUnavailable, error_message(response, "(__-){ Twitter is over capacity.")
        end
      end
    end

    def initialize(app)
      super
      @parser = nil
    end

    private

    def self.error_message(response, body=nil)
      "#{response[:method].to_s.upcase} #{response[:url].to_s}: #{response[:response_headers]['status']}:#{(' ' + body) if body} Check http://status.tweetsentiments.com/ for updates on the status of the Tweetsentiments service."
    end
  end
end
