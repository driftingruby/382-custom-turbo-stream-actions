class User < ApplicationRecord
  include Turbo::Streams::ActionHelper
  include Turbo::Streams::StreamName

  after_create -> {
    content = turbo_stream_action_tag(:toast, message: "A new user was created")
    ActionCable.server.broadcast(stream_name_from(:users), content)
  }
end
