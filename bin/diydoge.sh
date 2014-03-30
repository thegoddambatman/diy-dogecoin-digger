#!/bin/bash
# Usage: ./diydoge.sh
# Bootstraps and starts the CPU miner, pointing it at doge.st

# Detect local arch. This could be much more thorough. Also this is
# assuming 'uname -m' is universal, and will of course fall over if
# you're ARM or something.
CPU_ARCH=$(uname -m)
if [ $CPU_ARCH == 'x86_64' ]; then
  CPUMINER_ARCH=x86_64
else
  CPUMINER_ARCH=x86
fi

# Bootstrap TODO: Figure out some strategy -- like an env variable or
# something -- to get the user to supply their own wallet address during
# bootstrap. Right now they get to do it twice I guess, or fork from
# GitHub or something.
echo [*] Fetching binary CPU miner
curl -3sSLO https://github.com/thegoddambatman/diy-dogecoin-digger/raw/master/bin/pooler-cpuminer-2.3.3-linux-$CPUMINER_ARCH.tar.gz

if [ -e $PWD/p2p.con ]; then
  echo [*] Using existing p2p.conf
else
  echo [*] Fetching p2p.conf
  curl -3sSLO https://github.com/thegoddambatman/diy-dogecoin-digger/raw/master/conf/p2p.conf
fi

# TODO: Check the md5sum of the downloaded file binary
# Right now we're relying solely on SSL, which is okay, but not great.

echo [*] Extracting to 'minerd' in the current directory...
tar zxf pooler-cpuminer-2.3.3-linux-$CPUMINER_ARCH.tar.gz
rm pooler-cpuminer-2.3.3-linux-$CPUMINER_ARCH.tar.gz

# Main

# TODO: Figure out a decent, automatic way to rate limit this
# so users don't find their fans going crazy. Nice is okay for
# VMs but will still peg real CPUs solid. cpulimit is okay but
# doesn't handle multiple cores very well at all.

P2P_WALLET=$(grep \"user\" $PWD/p2p.conf | cut -f 2 -d ":" | sed s/[\ \",]//g)

echo [*] "Let's dig some Ðogecoin!"
echo [*] "Check status at http://doge.st/serverstats#$P2P_WALLET"
echo [*] "To quit, just type 'killall minerd'"

# TODO: Pick up wallet address automatically from p2p.conf so we can
# talk about it here.
nice -n 5 $PWD/minerd -c $PWD/p2p.conf

# TODO: This could be so much more complex... like adding this as a service
# and taking advantage of syslog, but we're PoC right now. Maybe a
# different bootstrap for people who don't mind doing root things like
# installing services?
