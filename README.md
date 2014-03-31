# Do-It-Yourself Ðogecoin Digger (DÐD)
 
Start digging in your own back yard!

![DogeCoin](http://static.tumblr.com/ppdj5y9/Ae9mxmxtp/300coin.png)

## CPU Mining for the Masses!

This project is intended to get users up and running on a CPU miner in
as fast, secure, and friendly way possible. That means providing
pre-configured installers that can be automatically run from the command
line with as little fuss as possible. It also means validating all the
provided binaries and scripts with md5sums and keeping everything on
SSL for download and install.

Mass CPU mining is important to the future of Dogecoin, if you can spare
the cycles and electrons. If you're interested in some of the reasons,
feel free to read on. Otherwise...

## TL;DR!

Oh, I get it, you're the sort who doesn't care about details. You just want
to be helpful. I respect that. After all, who has the time? Here's what you
need to do to start digging some Dogecoin with a P2P pool and help protect
the Dogecoin network, right now.

### Step One: Get a Wallet

If you have a wallet, great, just skip ahead to the [Linux/OSX method](https://github.com/thegoddambatman/diy-dogecoin-digger#d%C3%90d-on-linux-and-osx)
or the [Windows procedure](https://github.com/thegoddambatman/diy-dogecoin-digger#d%C3%90d-on-microsoft-windows).

![Multidoge](http://i.imgur.com/SdFtBtgs.png)

If you don't have a Dogecoin wallet yet, then might I suggest the
[MultiDoge](http://multidoge.org/) wallet? It's easy and fun, cross-platform,
allows for removable keys on a USB drive, and you don't have to wait for days
for the network to sync.

There are many other choices in your quest for a Dogecoin address. Feel free
to shop around.

### Step Two: Start digging already!

Now that you have a wallet, pick your operating system, and follow the
very simple instructions to get started. You can choose Linux/OSX,
Windows (soon), Raspbian (some day), or Android (some other day).

## DÐD on Linux and OSX

![Linux](http://i.imgur.com/iEMgx2U.png) ![OSX](http://i.imgur.com/Mitgpaf.png)

The Linux and OSX version of the bootstrap script, `ddd.sh`,
requires curl, a small application useful for command-line file transfers.
Most of these systems already have it. DDD also assumes an Intel-based 64-bit
for OSX or Linux, or 32-bit Linux (for now). All MacBooks manufactured since
late 2006 have 64-bit CPUs, but if you're not sure about yours,
[here's how to tell](http://support.apple.com/kb/HT3696).

So, you should be set out of the box. Just open a Terminal window, and type:

````
\curl -3sSL http://ur1.ca/gxypf | bash
````

#### Avoiding getting ripped off

The above will get you started mining right away, but you'll be mining
to **my** Dogecoin address, not yours. While this seems like a perfectly
reasonable default to **me**, you might not agree. That's fair. You can
keep your earnings by editing the `p2p.conf` file first. Here's how:

````
\curl -3sSLO https://raw.githubusercontent.com/thegoddambatman/diy-dogecoin-digger/master/bin/ddd.sh
\curl -3sSLO https://github.com/thegoddambatman/diy-dogecoin-digger/raw/master/conf/p2p.conf
sed -i s/DLkmYda7gQ7U4pxQZbyJtkpnCxYrvDWa7g/YOUR-DOGECOIN-WALLET-ADDRESS/ p2p.conf
bash ./ddd.sh
````

Just copy and paste that into your Terminal window. It should work out.

#### Non-Debian derived systems

This probably works on other Linuces. Let's keep a list of tested
operating systems on the
[wiki](https://github.com/thegoddambatman/diy-dogecoin-digger/wiki/_pages)! That'll
be fun.

## DÐD on Microsoft Windows

![Windows](http://i.imgur.com/CVDmPUk.jpg)

Sadly, Windows kind of fails at both having an easy command-line interface
for file transfers, and a scriptable way to unzip files. To take care of that,
you *may* need to manually download a couple things if you haven't done something
like this before.

  * [cURL]()
  * [7zip]()

These are useful anyway so you'll be happy you have them. You may need adminstrative
permissions to install one or both, though, depending on your local security settings.
Ask an adult first!

Once you have those installed, you can pretend like you're on Linux or OSX, and run:

````
curl -3sSL https://bit.ly/ddd-win -o ddd.bat && ddd.bat
````

Someday, we'll have a nice one-click experince for our Microshibe friends.

#### Avoiding getting ripped off

The above will get you started mining right away, but you'll be mining
to **my** Dogecoin address, not yours. While this seems like a perfectly
reasonable default to **me**, you might not agree. That's fair. You can
keep your earnings by editing the `p2p.conf` file first. Here's how.

First, get the p2p.conf and the `ddd.bat` batch file:

````
curl -3sSLO https://raw.githubusercontent.com/thegoddambatman/diy-dogecoin-digger/master/bin/ddd.bat
curl -3sSLO https://github.com/thegoddambatman/diy-dogecoin-digger/raw/master/conf/p2p.conf
````

Edit `p2p.conf` with your favorite editor. Be careful to save it as a `p2p.conf`
and not `p2p.conf.txt` (Windows is tricky like that.)

Then, just as before:

````
ddd.bat
````

# The Longer Story

So if you've read this far, you may be wondering why I want loads and
loads of people to start mining on their low-end, non-optimized gear.
I mean, that's just going to kick up the difficulty rate and cost
everyone a bunch of electricity, right?

Well...

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
sort of stuff. Also, talk up the
[wiki](https://github.com/thegoddambatman/diy-dogecoin-digger/wiki/_pages).

# Tipjar

Of course, it's not a proper cryptocurrency project unless you leave out a tip jar. Here's mine:

[DFRVFASJ5U2qgLDG9rsjYdiooJoWRwtaQK](http://dogechain.info/address/DFRVFASJ5U2qgLDG9rsjYdiooJoWRwtaQK)

I should probably get something fancier, but hey.

