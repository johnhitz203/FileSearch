defmodule FileSearch do
  @moduledoc """
  FileSearch is a module for searching for files by path
  """

  @doc """
  When give the a path the all function will return all nested files in that path that are not hidden
  """
  def all(folder) do
    Path.wildcard("#{folder}/**/*")
  end

  def by_extension(folder, extension) do
    Path.wildcard("#{folder}/**/*.#{extension}")
  end
end
