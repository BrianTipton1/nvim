local H = {
  exec_if_git = function(ops)
    local path = vim.loop.cwd() .. "/.git"
    local ok, _ = vim.loop.fs_stat(path)
    if ok then
      ops.yes()
    else
      ops.no()
    end
  end
}

return H
