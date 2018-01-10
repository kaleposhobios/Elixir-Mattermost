defmodule Mattermost.Message do

  @doc """
  Passes back a map containing necessary message attributes.
  """

  def respond(channel_id, text, mattermost) do
    Mattermost.Web.Posts.create(channel_id, text, mattermost)
  end
  
end
