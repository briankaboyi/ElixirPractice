defmodule Ruff do
  def area(:circle,r) do
    3.14* r *r
  end

  def area(:square,r) do
    r*r
  end

  def area(_unknown,_unknown2) do
    {:error,"invalid arguments"}
  end

  def gtest(:case,a,b) do
    case {a,b} do
      {a,b} when a<b -> IO.puts("a is less than b")
      {a,b} when a>b -> IO.puts("a is more than b")
      _ -> IO.puts("a is equal to b")

    end

  end
  def gtest(:cond,a,b) do
    cond do
       a<b -> IO.puts("a is less than b")
      a>b -> IO.puts("a is more than b")
      true -> IO.puts("a is equal to b")

    end

  end

  def gtest(:if, a,b) do
    if a<b do
      IO.puts("a is less than b")
    else
      if a>b do
        IO.puts("a is more than b")
      else
        IO.puts("a is equal to b")
      end
    end
  end

  def gtest(:fn,a,b) do
    result = fn ar,br -> IO.puts("#{ar} + #{br} is #{ar+br}") end
    result.(a,b)
  end
  
  def gtest(:fn1, a) do

    result = fn arg -> IO.puts("#{arg} is king") end
    result.(a)


  end




end
