# Do-It-Yourself Ðogecoin Digger (DÐD)

Start digging in your own back yard!

![DogeCoin](http://static.tumblr.com/ppdj5y9/Ae9mxmxtp/300coin.png)

## COMPLETELY NOT READY FOR PRODUCTION

This is very much a work in progress. Do not use for any reason until this message changes.

This project is intended to get users up and running on a CPU miner in as fast, secure, and friendly way possible. That means providing pre-configured installers that can be automatically run from the command line with as little fuss as possible -- it'll be ideal for unattended installs where you go from zero to p2p pool hashing. It also means validating all the provided binaries and scripts with md5sums and keeping everything on SSL for download and install. Finally, it also means preconfiguring a niceness level that people's CPUs don't spike, heat doesn't go crazy, and the fans start burning out. Because that would be mean.

## TL;DR: [T]o [L]ong, [D]ig al[R]eady!

You don't care about details. I respect that. Here's what you need to do to start digging some Dogecoin today:

If you don't have a Dogecoin wallet yet, then fetch the [MultiDoge](http://multidoge.org/) wallet. It's easy and fun.
### Linux

The Linux version requires curl, and currently assumes Intel-based 64-bit or 32-bit. ARM coming soon!


````
\curl -3sSL http://ur1.ca/gxypf | bash
````

This will get you started right away, but you'll be mining to my Dogecoin address. This is fixable by editing the `p2p.conf` file that just appeared, and start `./minerd -c p2p.conf` again and you'll be good to go. No, this is not a great solution but this is all proof-of-concept at the moment. If you'd like to make sure you're always using your wallet (and not mine), do this:


````
# Instructions for not getting ripped off here
````


### Windows

TODO: Download a thing, then run a thing. An installer or even better, just a batch file.

### Apple OSX

TODO: Terminal, then curl to bash. Homebrew style. Might need a brew tap, better would be a shell script.

## Details

Talk about /u/GoodShibe's post about defending dogecoins. Appeal to volunteerism. Admit that CPU mining is tiny but hey it's a little something, and a whole bunch of little somethings can lead to a big something.

http://www.reddit.com/r/dogecoin/comments/21o1k4/of_wolves_and_weasels_day_81_the_grim_reality/

## P2P Pools

Talk about why these are less evil and more secure than multipools and even dedicated Dogecoin pools. Use http://doge.st/ as the example since that'll be the default config anyway for the installers.

## Optimizing CPUMiner

This is getting past the fast-and-easy idea of this project, but provide a couple sentences on compiling and running cpuminer from https://github.com/pooler/cpuminer . But, stress that it's perfectly fine to run the stock miner from http://sourceforge.net/projects/cpuminer/files/ as long as you check the md5 checksum (holy hell those binaries are shipped in the clear with no signing at all... so need to fix that, obviously).

## GPU Mining

Pretty much out of scope for now because I'm GPU-tarded. Will start researching after I'm done with this thing, or maybe someone else can.

## Other Resources

Point to other getting started guides that don't suck.

## Beg for contributors

Spend a couple sentences on GitHub and how to contribute without getting into the weeds with git branching and whatever.

## Beg for tips

Of course, it's not a proper cryptocurrency project unless you leave out a tip jar. Here's mine:

[DFRVFASJ5U2qgLDG9rsjYdiooJoWRwtaQK](http://dogechain.info/address/DFRVFASJ5U2qgLDG9rsjYdiooJoWRwtaQK)

