from pathlib import Path

from beet import Context, subproject


def beet_default(ctx: Context):
    ctx.require(subproject({"extend": Path(__file__).parent / "beet.json"}))

    yield

    # Callback Scheduler needs to run last due to timing-shenanigans
    ctx.data.function_tags["minecraft:tick"].remove("cb:internal/tick")
    ctx.data.function_tags["minecraft:tick"].add("cb:internal/tick")
