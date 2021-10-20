# DIY Containers

A very simple, illustrative container abstraction in bash. Use the script, shocker.sh to run commands in an alpine environment once you are in the virtual machine.

Use `vagrant up axiom` to create the virtual machine, then connect to it using `vagrant ssh axiom`. You will land in a directory with the shocker scripts. Each script illustrates a different level of containerisation, increasing from shocker1 to shocker2 and ending with shocker.sh

Launch an interactive shell in the alpine environment using `./shocker.sh /bin/ash`
