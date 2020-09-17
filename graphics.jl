function plotChain!(p, c::Array{Transf,1})::Plots.Plot
    points = map((t) -> (t.v.x, t.v.y, t.v.z), c)
    plot!(
        p,
        points,
        color = :black,
        label = nothing,
    )
end

function projectChain!(p, c::Array{Transf,1})::Plots.Plot
    points = map((t) -> (t.v.x, t.v.y, 0), c)
    plot!(
        p,
        points,
        color = :gray,
        label = nothing,
    )
end

function plotAxis!(p, t::Transf=Trasnf(), l::Real=1)::Plots.Plot
    zero = t.v
    x = t + Vec(l, 0, 0)
    y = t + Vec(0, l, 0)
    z = t + Vec(0, 0, l)
    plot!(p, [zero.x, x.x], [zero.y, x.y], [zero.z, x.z], color = :red, label = nothing)
    plot!(p, [zero.x, y.x], [zero.y, y.y], [zero.z, y.z], color = :green, label = nothing)
    plot!(p, [zero.x, z.x], [zero.y, z.y], [zero.z, z.z], color = :blue, label = nothing)
end