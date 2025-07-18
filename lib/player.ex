defmodule Player do
  defstruct name: "", paid: false, over_18: true

  def may_attend_after_party(attendee = %Player{}) do
    attendee.paid && attendee.over_18
  end

  def print_vip_badge(%Player{name: name}) when name != "" do
    IO.puts("Very cheap badge for #{name}")
  end

  def print_vip_badge(%Player{}) do
    raise "missing name for badge"
  end
end
