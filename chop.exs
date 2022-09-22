defmodule Chop do
  def guess(num, min..max) do
    mid = min + div(max - min, 2)
    IO.puts "Is it #{mid}?"
    guess(num, min..(max+1), mid)
  end

  def guess(num, _.._, mid) when mid == num do
    IO.puts mid
  end

  def guess(num, min.._, mid) when num < mid do
    guess num, min..mid
  end

  def guess(num, _..max, mid) when num >= mid do
    guess num, mid..max
  end
end
