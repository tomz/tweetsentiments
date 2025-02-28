module Tweeetsentiments
  # Custom error class for rescuing from all server errors
  class Error < StandardError
    attr_reader :http_headers

    def initialize(message, http_headers)
      @http_headers = Hash[http_headers]
      super message
    end

    def ratelimit_reset
      Time.at(@http_headers.values_at('x-ratelimit-reset', 'X-RateLimit-Reset').detect{|value| value}.to_i)
    end

    def ratelimit_limit
      @http_headers.values_at('x-ratelimit-limit', 'X-RateLimit-Limit').detect{|value| value}.to_i
    end

    def ratelimit_remaining
      @http_headers.values_at('x-ratelimit-remaining', 'X-RateLimit-Remaining').detect{|value| value}.to_i
    end

    def retry_after
      [(ratelimit_reset - Time.now).ceil, 0].max
    end
  end

  # Raised when server returns the HTTP status code 400
  class BadRequest < Error; end

  # Raised when server returns the HTTP status code 401
  class Unauthorized < Error; end

  # Raised when server returns the HTTP status code 403
  class Forbidden < Error; end

  # Raised when server returns the HTTP status code 404
  class NotFound < Error; end

  # Raised when server returns the HTTP status code 406
  class NotAcceptable < Error; end

  # Raised when server returns the HTTP status code 420
  class RateLimited < Error; end

  # Raised when server returns the HTTP status code 500
  class InternalServerError < Error; end

  # Raised when server returns the HTTP status code 502
  class BadGateway < Error; end

  # Raised when server returns the HTTP status code 503
  class ServiceUnavailable < Error; end
end
