class TestsController < ApplicationController
  respond_to :json

  def test
    status = (params[:status_code].nil? ? :ok : params[:status_code].to_i)
    respond_with({foo: 'bar'}, status: status)
  end
end
