require "get_process_mem"
require "munch/version"

module Munch
  def self.track(tag = nil)
    tag = "[#{tag.upcase}] " if tag
    key = rand(36**8).to_s(36)

    mb = get("#{tag}Before #{key}")
    yield
    get("#{tag}After  #{key}", mb)
  end

  def self.get(txt = nil, before = nil)
    GetProcessMem.new.mb.round.tap do |mb|
      txt += " - " if txt
      msg = "#{txt}Memory usage : #{mb} MB"
      msg += " (#{format("%+d", mb - before)} MB)" if before
      puts msg
    end
  end
end
