g=open("/home/darvinrio/Documents/astro/iso.txt")
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
        push!(y,b-v)
        push!(x,v)
end
m=x
o=y
scatter(y,x,markersize=1)
