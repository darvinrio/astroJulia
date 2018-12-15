g=open("/home/darvinrio/Documents/astro/exp5/par_pmr.csv")
f=readlines(g)
n=length(f)
par=Float64[]
pmr=Float64[]
for i=2:n
    a=split(f[i],",")
    try
        x=0.1/parse(Float64,a[1])
        push!(par,x)
         y=parse(Float64,a[2])
        push!(pmr,y)
    catch
        continue
    end
end
using Plots
#=
histogram(par,
            fillcolor=:red,
            nbins=20,
            xticks = -5:0.5:5,
            )
            =#
histogram(par,
            fillcolor=:red,
            label="NGC 7419",
            xlabel="Distance x10^5",
            xlims=[-1,1.5],
            nbins=100,
            xticks=-5:0.25:5
            )
#savefig("pmra.png")
