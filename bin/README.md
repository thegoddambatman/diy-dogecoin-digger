# DÐD Bins

This is where the binaries live. Don't fret, they're small and harmless.

## Pooler's CPUMiner

The guts of DDD is @pooler's CPU miner (aka, `minerd`), pulled from
[SourceForge](http://sourceforge.net/projects/cpuminer/files/) .

Source and license is available [at his repo](github.com/pooler/cpuminer). While the below md5sums were verified
by me, feel free to compile yourself -- especially if you're running a
funny operating system.

In the future, I'll be doing all the compiling so *I* know everything's
cool. For now, though, we'll trut that SourceForge hasn't monkeyed with
these binaries in sneaky ways.

Oh, and I added in some VirusTotal scan results. You'll notice that there
are kind of a lot of hits on the Win32 cpuminter. This is because a lot of
anti-virus vendors have thrown minerd.exe in a category of "things that
gobble up your CPU that sometimes trojans drop."

Therefore, if you have plans to drop these things on Windows machines,
you will want to create an exception around the folder you plan to put
them in. I suggest excepting something obvious like "C:\Users\name\ddd"
or somesuch.


cpuminer bundle                            | build date | md5 cryptographic checksum       | VirusTotal
-------------------------------------------|------------|----------------------------------|--------------------------------
pooler-cpuminer-2.3.3-linux-x86_64.tar.gz  | 2014-02-27 | 37f2d274b8281ed8d87dffb80db4a15a | [VT](https://www.virustotal.com/en/file/5222c2178402ca94d59c9884bcea5d449120a1a10116eca5e50d1b90688bd0af/analysis/1396237908/)
pooler-cpuminer-2.3.3-linux-x86.tar.gz     | 2014-02-27 | 8479a43fa58d5a839d37c7a844c5d693 | [VT](https://www.virustotal.com/en/file/b9ea3ae108786a4ad7031d7736a9f78463e00ff9f13927e2e8b18d2fcc9acab6/analysis/1396237876/)
pooler-cpuminer-2.3.3-win64.zip            | 2014-02-27 | d4b088779b02373382b6017cf47db121 | [VT](https://www.virustotal.com/en/file/8af141adfe7a2823a89fe5cc87f4da1c6be34f49a690b15e565d8b5c36e32045/analysis/1396238005/)
pooler-cpuminer-2.3.3-win32.zip            | 2014-02-27 | 2d6a55b468d3cda2c16a6a6da879fa21 | [VT](https://www.virustotal.com/en/file/5eb61dfc0c965dfae65678d8ae5f1d2c99f781f3aba2136c1c7a4e0375cadfd7/analysis/1396237984/)
pooler-cpuminer-2.3.3-osx64.zip            | 2014-03-10 | f38c7504097c6b38e8a85ea99fc1bc13 | [VT](https://www.virustotal.com/en/file/6affb3f4c93d70180ce6474406162cfd39a0d9120ba70748847b504ab090a495/analysis/1396237953/)
pooler-cpuminer-2.3.3.tar.gz               | 2014-02-27 | 3464ac9faca77c830105543fbc96b2d9 | [VT](https://www.virustotal.com/en/file/aceb90cb8b0f26bba68fe789e0c8d8cc9586af60eac103f25481a165c3b2f29e/analysis/1396237844/)

This list is far from complete, of course -- getting builds together for
more exotic hardware that you might have lying around not digging for
Dogecoin is a priority around here.

## Helper applications

Some operating systems don't provide helpful tools like command-line downloaders, unarchivers, and the like.

Application  | binary installer                 | source                                                                    | md5 checksum                     | VirusTotal Analysis 
-------------|----------------------------------|---------------------------------------------------------------------------|----------------------------------|----------------------
7-Zip        | 7z920.msi                        | [ConfusedByCode](http://www.confusedbycode.com/curl/)                     | 9bd44a22bffe0e4e0b71b8b4cf3a80e2 | [VT Clean](https://www.virustotal.com/en/file/ddbe6836f44dda812960d07d987d703a11f4e917cbf7381022f3277c2898960a/analysis/1396187956/)
cURL         | curl-7.35.0-win32-local-fix1.msi | [SourceForge](http://sourceforge.net/projects/sevenzip/files/7-Zip/9.20/) | 6d343ae45ba615e3604a7ca812e4c274 | [VT Clean](https://www.virustotal.com/en/file/aaec926ead509bb2b3962a83a2d8d74dcbfa3de30c2dc7a10e475ff66e59d54f/analysis/1396188014/)


7-Zip is distributed under the 7-Zip License, here: http://7-zip.org/license.txt, and source is available at http://7-zip.org

cURL is distributed under a derivative of the MIT license, here: http://curl.haxx.se/docs/copyright.html, and source is available at http://curl.haxx.se.

