defmodule Mattermost.Web.Posts do

  ####################################################################
  @api_create "/api/v4/posts" # POST
  @doc """
  Create a post in a channel
  """
  def create(channel_id, message, mattermost) do
    endpoint = mattermost.url <> @api_create
    payload = %{channel_id: channel_id, message: message}
    IO.puts "Doing a post"
    Mattermost.Web.post(endpoint, pathing, payload, [], mattermost)
  end
end
