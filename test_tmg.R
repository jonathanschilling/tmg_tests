library("tmg");

# Set number of samples
n=15000;

#Define precision matrix and linear term 
M = matrix(c(.5,-.4, -.4,.5), 2,2)
r = c(0,0)

# Set initial point for the Markov chain
initial = c(4,1)

# Define two linear constraints
f = diag(2)
f[1,2] = 1
g = c(0,0)

q = NULL;

# Sample and plot
samples = rtmg(n, M, r, initial, f,g, q); 
plot(samples, pch=".")