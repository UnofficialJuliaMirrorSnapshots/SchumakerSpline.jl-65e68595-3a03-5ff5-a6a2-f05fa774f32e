using SchumakerSpline
x = collect(0.0:0.01:2.0)
y = sqrt.(x)
s1 = Schumaker(x, y)

# This should plot something over [0,2]
plt = plot(s1)
# This should plot something over [0,1]
plt = plot(s1, [0.0,1.0])
# This should add a second spline just below with same derivaitves
glt = plot(s1 -10.0, [0.5,1.0]; plot_options = (label = "shifted",), deriv_plot_options = (label = "shifted deriv1",), deriv2_plot_options = (label = "shifted deriv2",), plt = plt)
# This should only plot the first spline.
qlt = plot(s1 + 0.2, [0.0,1.0]; plot_options = (label = "shifted",))


ss = Array{Schumaker,1}([s1, s1+0.2, s1*0.8+0.2])
plt  = plot(ss, [0.0,1.0])

plt = plot(ss)
plt2 = plot(0-2.0*s1 + 0.1, [0.0,1.0]; derivs = false, plot_options = (label = "new one",), plt = plt)

# I can't really test anything here. So just giving a true so it all runs happily.
true
