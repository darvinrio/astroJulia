g=open("/run/media/darvinrio/STEPHEN/ubv.ccd")
f=readlines(g)
n=length(f)
x=Float64[]
y=Float64[]
for i = 2:n
    a=split(f[i],"\t")
    if parse(Float64,a[2])!=68
        continue
    end
        push!(x,parse(Float64,a[3]))
        push!(y,parse(Float64,a[4]))
end
m=x
o=y
using Plots
plot(y,x,linealpha=0, #plot hr dia
        markershape=:circle,
        xlabel="BV",
        ylabel="V",
        yflip=true,
        markersize=2)
