class TestsController < ApplicationController
  respond_to :json

  def test
    #print informational stuff
    Rails.logger.info("  Cookies:")
    cookies.each {|c| Rails.logger.info("    #{c}")}

    status = (params[:status_code].nil? ? :ok : params[:status_code].to_i)
    respond_with({email: 'jdoe@example.com'}, status: status)
  end
end
