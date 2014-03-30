# Do-It-Yourself Ðogecoin Digger (DÐD)
 
Start digging in your own back yard!

![DogeCoin](http://static.tumblr.com/ppdj5y9/Ae9mxmxtp/300coin.png)

## COMPLETELY NOT READY FOR PRODUCTION

This is very much a work in progress. Do not use for any reason until this message changes.

This project is intended to get users up and running on a CPU miner in
as fast, secure, and friendly way possible. That means providing
pre-configured installers that can be automatically run from the command
line with as little fuss as possible -- it'll be ideal for unattended
installs where you go from zero to p2p pool hashing. It also means
validating all the provided binaries and scripts with md5sums and
keeping everything on SSL for download and install. Finally, it also
means preconfiguring a niceness level that people's CPUs don't spike,
heat doesn't go crazy, and the fans start burning out. Because that
would be mean.

## TL;DR!

You don't care about details. I respect that. Who has the time? Here's
what you need to do to start digging some Dogecoin with a P2P pool and
help protect the Dogecoin network, right now:

### Step One: Get a Wallet

![Multidoge](http://i.imgur.com/SdFtBtgs.png)

If you don't have a Dogecoin wallet yet, then fetch the
[MultiDoge](http://multidoge.org/) wallet. It's easy and fun,
cross-platform, and you don't have to wait for days for the network to
sync.

There are many other choices for getting a wallet. Trust me, Multidoge
is the best choice right now for the right mix of ease-of-use and
security.

### Step Two: Start digging already!

Now that you have a wallet, pick your operating system, and follow the
very simple instructions to get started. You can choose Linux/OSX,
Windows (soon), Raspbian (some day), or Android (some other day).

## DÐD on Linux and OSX

![Linux](http://i.imgur.com/iEMgx2U.png) ![OSX](http://i.imgur.com/Mitgpaf.png)

The Linux and OSX version of the bootstrap script, `diydoge.sh`,
requires curl, and currently assumes an Intel-based 64-bit for OSX or
Linux, or 32-bit Linux.

All macbooks manufactured since late 2006 have 64-bit CPUs, but if
you're not sure about yours, [here's how to tell](http://support.apple.com/kb/HT3696).

````
\curl -3sSL http://ur1.ca/gxypf | bash
````

#### Avoiding getting ripped off

The above will get you started mining right away, but you'll be mining
to my Dogecoin address. While this seems like a perfectly reasonable
default to me, you might not be so generous. You can keep your earnings
by editing the `p2p.conf` file first. Here's that procedure:

````
\curl -3sSLO https://raw.githubusercontent.com/thegoddambatman/diy-dogecoin-digger/master/bin/diydoge.sh
\curl -3sSLO https://github.com/thegoddambatman/diy-dogecoin-digger/raw/master/conf/p2p.conf
sed -i s/DLkmYda7gQ7U4pxQZbyJtkpnCxYrvDWa7g/YOUR-DOGECOIN-WALLET-ADDRESS/ p2p.conf
bash ./diydoge.sh
````

Just copy and paste that into your terminal window.

#### Non-Debian derived systems

This probably works on other Linuces. Let's keep a list of tested
operating systems on the
[wiki](https://github.com/thegoddambatman/diy-doge-digger/wiki)! That'll
be fun.

## DÐD on Microsoft Windows

This is the next TODO.

# The Longer Story

So if you've read this far, you may be wondering why I want loads and
loads of people to start mining on their low-end gear. I mean, that's
just going to kick up the difficulty rate and cost everyone a bunch of
electricity, right?

XXX: Here's where I talk about /u/GoodShibe's post about defending
dogecoins. Appeal to volunteerism. Admit that CPU mining is tiny but hey
it's a little something, and a whole bunch of little somethings can lead
to a big something.

http://www.reddit.com/r/dogecoin/comments/21o1k4/of_wolves_and_weasels_day_81_the_grim_reality/

XXX: Here's where I talk about P2P Pools, and doge.st in particular.
Talk about why these are less evil and more secure than multipools and
even dedicated Dogecoin pools. Use http://doge.st/ as the example since
that'll be the default config anyway for the installers.

# Next steps

XXX: Here's where I talk about compiling and optimizing CPUMiner.

https://github.com/pooler/cpuminer

XXX: Here's where I talk about the next step: GPU mining. That's a whole
other can of worms, even more expensive, but also even more fun. I'm
totally unqualified to talk about that right now, though.

# Recruit contributors

XXX: Here's where I talk about open source projects that are one-man
shows rarely last, and there are way smarter people than me about this
sort of stuff. Also, talk up the wiki.

# Tipjar

Of course, it's not a proper cryptocurrency project unless you leave out a tip jar. Here's mine:

[DFRVFASJ5U2qgLDG9rsjYdiooJoWRwtaQK](http://dogechain.info/address/DFRVFASJ5U2qgLDG9rsjYdiooJoWRwtaQK)

I should probably get something fancier, but hey.

