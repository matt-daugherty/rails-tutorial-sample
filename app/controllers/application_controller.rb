class ApplicationController < ActionController::Base
    def test
        render html: "it's working!"
    end
end
