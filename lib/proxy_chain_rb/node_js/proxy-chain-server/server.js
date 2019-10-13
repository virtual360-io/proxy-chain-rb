#!/usr/bin/env node

'use strict'

if (process.argv.length != 6) {
  console.log("usage: node server.js proxy_url instance_id tag started")
  process.exit(0)
}

const proxyUrl          =   process.argv[2].trim();
const instanceId        =   process.argv[3].trim();
const tag               =   process.argv[4].trim();
const started           =   process.argv[5].trim();

const proxyChain        =   require('proxy-chain');
let anonymizedProxyUrl  =   null;
 
(async() => {
  anonymizedProxyUrl    =   await proxyChain.anonymizeProxy(proxyUrl);
  console.log(anonymizedProxyUrl);
})();

process.on('SIGINT', function() {
  proxyChain.closeAnonymizedProxy(anonymizedProxyUrl, true, () => {
    console.log(`Closed proxy ${anonymizedProxyUrl}`);
  });
});
