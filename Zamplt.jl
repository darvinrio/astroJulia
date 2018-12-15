g=open("/home/darvinrio/Documents/astro/exp5/ubvr.ccd")
f=readlines(g)
n=length(f)
x=Float64[]
y=Float64[]
for i = 3:n
    a=split(f[i])
    bv=parse(Float64,a[4])
    v=parse(Float64,a[3])
    if parse(Float64,a[2])!=530
        continue
    end
    if length(a)==5
        u=parse(Float64,a[5])
        push!(x,bv+0.3)
        push!(y,v+(bv-u)-2)
        continue
    end
    push!(x,bv+0.3)
    push!(y,v-2)
end
m=x
o=y
using Plots
plot(x,y,linealpha=0, #plot hr dia
        markershape=:circle,
        xlabel="BV",
        ylims=(10,22),
        ylabel="V",
        yflip=true,
        markersize=3,
        markerstrokealpha=1)

#ZAMS

g=open("/home/darvinrio/Documents/astro/exp5/zam")
f=readlines(g)
n=length(f)
x=Float64[]
y=Float64[]
for i=2:n
        a=split(f[i])
        b=a[5]
        c=a[7]
        push!(x,parse(Float64,b))
        push!(y,parse(Float64,c))
end
m=x
o=y
plot!(y,x,
        yflip=true,
        linealpha=1,
        linewidth=3,
        linecolor=:red,
        markeralpha=0
        )


#ISO
