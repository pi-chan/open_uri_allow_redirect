require "open-uri"

module OpenURI
  class << self
    alias_method :redirectable_cautious?, :redirectable?
    @_allow_redirect = false
    
    def allow_redirect
      old_redirect, @_allow_redirect = @_allow_redirect, true
      yield
    ensure
      @_allow_redirect = old_redirect
    end

    def redirectable_safe?(uri1, uri2)
      uri1.scheme.downcase == uri2.scheme.downcase || (uri1.scheme.downcase == "http" && uri2.scheme.downcase == "https")
    end

    def redirectable?(uri1, uri2)
      if @_allow_redirect
        redirectable_safe?(uri1, uri2) || (uri1.scheme.downcase == "https" && uri2.scheme.downcase == "http")
      else
        redirectable_cautious?(uri1, uri2)
      end
    end
  end
end
