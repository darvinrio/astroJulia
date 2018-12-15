g=open("/home/darvinrio/Documents/astro/exp5/ubv.ccd")
f=readlines(g)
n=length(f)
x=Float64[]
y=Float64[]
for i = 2:n
    a=split(f[i],"\t")
    if parse(Float64,a[2])!=530
        continue
    end
        push!(x,parse(Float64,a[3]))
        push!(y,parse(Float64,a[4]))
end
using Plots
plot(y,x,linealpha=0, #plot hr dia
        markershape=:circle,
        bg=:black,
        xlabel="BV",
        ylims=(10,22),
        ylabel="V",
        yflip=true,
        markersize=3,
        markerstrokealpha=0,
        label="NGC 7419"
        )

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
        d=a[8]
        e=0
        if(d=="...")
                e=0
        else
                e=parse(Float64,d)-parse(Float64,c)
        end
        push!(x,parse(Float64,b)+12.5)
        push!(y,parse(Float64,c)+1-e)
end
scatter!(y,x,
                markerstrokealpha=0,
                markersize=3,
                markercolor=:red,
                label="ZAMS"
        )
#savefig("zams.png")
#ISO

g=open("/home/darvinrio/Documents/astro/exp5/iso.txt")
f=readlines(g)
n=length(f)
x=Float64[]
y=Float64[]
for i=2:n
        a=split(f[i])
        if(length(a)==0)
                continue
        end
        b=parse(Float64,a[25])
        v=parse(Float64,a[26])
        push!(y,b-v+1.75)
        push!(x,v+18)
end
m=x
o=y
scatter!(y,x,
                markerstrokealpha=0,
                markersize=3,
                markercolor=:yellow,
                label="Isochrone"
        )
#savefig("iso.png")
