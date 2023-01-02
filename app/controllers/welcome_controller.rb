class WelcomeController < ApplicationController
  def index
  end

  def page1
    render turbo_stream: turbo_stream.toast("hello from a rails controller", position: :right)
  end

  def page2
    render turbo_stream: [
      turbo_stream.log("log from page 2"),
      turbo_stream.toast("hello from page 2", position: :left),
      turbo_stream.toast("hello from page 2 and this is a second toast", position: :right),
    ]
  end
end
