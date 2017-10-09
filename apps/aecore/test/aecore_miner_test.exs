defmodule MinerTest do
  use ExUnit.Case

  alias Aecore.Chain.Worker, as: Chain
  alias Aecore.Miner.Worker, as: Miner

  test "mine_next_block" do
    Miner.start_link()
    assert length(Chain.all_blocks) > 1
  end

end