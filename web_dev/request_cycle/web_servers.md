#Release 1: Research Web Servers

1. What are some of the key design philosophies of the Linux operating system?
  List by Mike Gancarz:
  * Small is beautiful
  * Make each program do one thing well
  * Build a prototype as soon as possible
  * Choose portability over efficiency
  * Store data in flat text files
  * Use software leverage to your advantage
  * Use shells scripts to increase leverage and portability
  * Avoid captive user interfaces
  * Make every program a filter

2. In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?
  A virtual private server is a server that utilizes shared resources, such as CPU, memory, and storage hardware. VPS are normally alloated a specific amount of each shared resource depending on the VPS vendor and service plan.
  The advantages of using a VPS include the flexibility of being able to choose your choice of operating systems, the amount of resources allocated to your VPS is specified, dedicated, and flexible, and it enables more security features.

3. Optional bonus question: Why is it considered a bad idea to run programs as the root user on a Linux system?
  Running programs as a root user on a Linux system enables the root user to modify files that the user may not want to modify. Non-root users have specific administrative rights and require temporary elevation of rights to perform certain tasks. By running programs as a non-root user, it prevents certain tasks, including those that are destructive, to happen by accident as a higher administrative level may be required to perform them.

#Release 2: Explore the DOM

1. DOM properties of interest
  * onvolumechange
  * onerror
  * onkeydown
  * orphans
  * animationTimingFunction