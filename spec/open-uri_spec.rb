require "spec_helper"

describe "OpenURI" do
  describe "open" do
    context "Default" do
      specify "HTTP => HTTPS redirection should not be allowed" do
        expect do
          open("http://redirect.com")
        end.to raise_error(RuntimeError, "redirection forbidden: http://redirect.com -> https://redirect.com/")
      end
    end

    context "with #allow_redirect" do
      specify "HTTP => HTTPS redirection should be allowed" do 
        expect do
          OpenURI.allow_redirect do
            open("http://redirect.com")
          end
        end.not_to raise_error
      end
    end
    
  end
end
