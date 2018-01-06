ChainzZz (AKA YobiChain 2.0)
=========

> WARNING: chainzZz is intended for experimenting and learning, NOT for a production environment.

![Image of chainzZz](http://www.unibit.io/img/chainzZz.png)

ChainzZz is your very own private Blockchain as a Service.
We wanted the ecosystem that YobiChain provided but with the options of choosing which services we wanted with a blockchain, and we figured people may want to have us run the blockchains for them as well, hence, Blockchain as a Service. 
The idea is simple, a website, that let’s you choose your blockchain parameters, and applications to go with it, and then you name the native currency on it, if you choose to have one, then we run it on our servers for you. All you have to do is login to your dashboard and check out the stats. The plan is to make it easy to manage your blockchain node’s using a modified version of MultiChain’s web-demo that is locked down and more secure then the open version they have given us to start with. 

(possibly pre-loaded with development tools, database, web & FTP servers and the following 4 blockchain applications:)

1. HashChain, a simple blockchain powered drag n drop solution for authenticating and verifying electronic records.

2. Vault, a simple blockchain powered document storage and retrieval system.

3. Contracts, a simple blockchain powered system for digitally signng contracts.

4. WebWallet, a simple blockchain powered wallet for Yobicoins, a smart asset.

 
This version of chainzZz runs on [Multichain 2.0](https://github.com/MultiChain).

ChainzZz is ideal for

* Startups looking to quickly build a blockchain powered prototype, PoC or MVP.
* Serious researchers / enthusiasts looking to experiment with a live blockchain.
* In-house teams experimenting with blockchain technology.


System Requirements
-------------------

To set up chainzZz, you will need 1 server (min 2 GB RAM, 2 CPUs) 
running Ubuntu 16.04.3 x64 and php 7.0. 


Installation
------------

This section presumes that you have root access to the server mentioned above and want to install chainzZz for all users on the system.

**Step 1.** Install git and clone the chainzZz repository

    sudo apt-get install git
    sudo git clone https://github.com/unibitlabs/chainzZz.git

**Step 2.** Harden the base operating system (Ubuntu 16.04.3 x64). This will also create a new user called [yobiuser] with the password entered by you below.

    cd chainzZz
    sudo bash -e hardening.sh <password>

**Step 3.** Install the FTP server. This will set up the FTP server. For logging in, use the IP address of your server as the `host`. The username and password are as entered by you below. The connection is `SFTP`.

    sudo bash -e ftp.sh <username> <password>


**Step 4.** Install, configure and run the Multichain blockchain, Multichain web-demo and Multichain Exporer. 
This also sets up HashChain, Vault, Contracts and WebWallet. 

The RPC port will be set as `15590` and the Network port will be set as `61172`. 

If you get a "locale error" using Terminal on mac, go to Terminal -> Preferences -> Profiles and uncheck "Set locale environment variables on startup"

    sudo bash -e multichain.sh <chain-name> <rpc-username> <rpc-password>
		
*To access Multichain web-demo, visit `http://<IP Address>/multichain-web-demo`

*To access Multichain Exporer, visit `http://<IP Address>:2750`

**To use hashchain, see the instructions at [https://github.com/Primechain/hashchain/blob/master/README.md](https://github.com/Primechain/hashchain/blob/master/README.md)

**To use Vault, see the instructions at [https://github.com/Primechain/yobiapps/blob/master/README.md#primevault](https://github.com/Primechain/yobiapps/blob/master/README.md#primevault)

**To use Contracts, see the instructions at [https://github.com/Primechain/yobiapps/blob/master/README.md#primecontract](https://github.com/Primechain/yobiapps/blob/master/README.md#primecontract)


**To use WebWallet, see the instructions at [https://github.com/Primechain/yobiapps/blob/master/README.md#yobiwallet](https://github.com/Primechain/yobiapps/blob/master/README.md#yobiwallet)


Notes
-----

This will:
1. harden the base operating system against cyber attacks

2. set up a Multichain blockchain using a pre-defined configuration

3. set up an FTP server

4. set up Multichain web demo

5. set up Multichain Explorer

6. set up HashChain, a simple blockchain powered drag n drop solution for authenticating and verifying electronic records.

7. set up Vault, a simple blockchain powered document storage and retrieval system.

8. set up Contracts, a simple blockchain powered system for digitally signng contracts.

9. set up WebWallet, a simple blockchain powered wallet for Yourcoins, a smart asset.

In case something goes wrong, you can roll back the multichain installation using

    bash rollback_multichain.sh 



Live demo → Update these upon completion & sucessfully running services!
---------
* To access a live Multichain web-demo, visit http://52.172.209.229/multichain-web-demo

* To access a live Multichain Exporer, visit http://52.172.209.229:2750

* To authenticate a file using hashchain, visit http://52.172.209.229/hashchain/hashchain_authenticator.php 
and to verify a file using hashchain, visit http://52.172.209.229/hashchain/

* To access the yobiapps, visit: http://52.172.209.229/yobiapps


Planned roadmap
-----
+ ~~[ ] Installation of PrimeVault~~ **done**
+ ~~[ ] Installation of PrimeContract~~ **done**
+ ~~[ ] Installation of YobiWallet~~ **done**
+ ~~[ ] Upgrade MultiChain to Version 2.0~~ **done** → Review Changelog*
+ ~~[ ] Installation of YourFeature~~ COMING NEXT


Originall Forked From Primechain Technologies, :thumbsup:
Hopefully you fork our version and make it better as well!

Original Authors
-------------
* Sripathi Srinivasan
* Rohas Nagpal
* Sudin Baraokar
* Shinam Arora

Modifed by a couple of people experimenting. ;)
