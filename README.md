ChainzZz.minified
=========

> WARNING: chainzZz is intended for experimenting and learning, NOT for a production environment.

This version of chainzZz runs on [Multichain 2.0](https://github.com/MultiChain).

System Requirements
-------------------

To set up chainzZz, you will need 1 server (min 2 GB RAM, 2 CPUs) 
running Ubuntu 16.04.3 x64 and php 7.0. 


Installation
------------

**Step 1.** Install git and clone the chainzZz.min repository

    sudo apt-get install git
    sudo git clone https://github.com/GreenEyes2012/chainzZz.git

**Step 2.** Harden the base operating system (Ubuntu 16.04.3 x64). This will also create a new user called [youruser] with the password entered by you below.

    cd chainzZz
    sudo bash -e hardening.sh <password>

**Step 4.** Install, configure and run the Multichain blockchain, Multichain web-demo and Multichain Exporer. 
This also sets up a user registration/login system along with a web wallet. 

The RPC port will be set as `15590` and the Network port will be set as `61172`. 

    sudo bash -e multichain.sh <chain-name> <rpc-username> <rpc-password>
		
*To access Multichain web-demo, visit `http://<IP Address>/multichain-web-demo`

*To access Multichain Exporer, visit `http://<IP Address>:2750`

**To use web wallet, see the instructions at [https://github.com/Primechain/yobiapps/blob/master/README.md#yobiwallet](https://github.com/Primechain/yobiapps/blob/master/README.md#yobiwallet)


Notes
-----

This will:
1. harden the base operating system against cyber attacks

2. set up a Multichain blockchain using a pre-defined configuration

3. set up Multichain web demo

4. set up Multichain Explorer

5. set up WebWallet, a simple blockchain powered wallet for Yourcoins, a smart asset.

In case something goes wrong, you can roll back the multichain installation using

    bash rollback_multichain.sh 



Live demo → Update these upon completion & sucessfully running services!
---------

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
