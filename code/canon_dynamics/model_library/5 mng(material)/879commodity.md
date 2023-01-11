## variables
inventory, price, capacity
![[Pasted image 20221007101836.png]]
- production
- price
- inflation
- maximum consumption, coverage perception time, 
- time step should be 1/10 of the smallest lbd for time
- if you are observing that has a process noise, consider using negative binomial
	- using negative binomial for flow rate based on variable mean 
model starts from equilibrium 

- #flushing flush time (if then else time %mod quarter), flush out = mp/dt * flush time
- #cavitydata if then else (data == NA)
- flushout rate = (measured production / dt) * flush_time (`TS`)
- flush_time (0 or 1) gets activated only once during on dt
* create mechansim for how it is measured (quarter or year); add measurement in the end