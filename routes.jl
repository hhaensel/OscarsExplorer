using Revise
using Stipple
using StippleUI
using StipplePlotly

using Stipple.Pages
using Stipple.ModelStorage.Sessions

includet(@__MODULE__, "models/Oscars.jl")
using .Oscars

Page("/", view = "views/hello.jl.html",
          layout = "layouts/app.jl.html",
          model = () -> Oscar |> init_from_storage |> Oscars.handlers,
          context = @__MODULE__)
