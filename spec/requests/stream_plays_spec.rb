require 'spec_helper'

describe "StreamPlays", js: true do
  it "plays stream when application starts" do
    visit "/"
    page.execute_script('$("#jquery_reelplayer").data("jPlayer").status.paused')
  end
end
