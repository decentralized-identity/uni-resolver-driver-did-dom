![DIF Logo](https://raw.githubusercontent.com/decentralized-identity/universal-resolver/master/docs/logo-dif.png)

# Universal Resolver Driver: did:dom

This is a [Universal Resolver](https://github.com/decentralized-identity/universal-resolver/) driver for **did:dom** identifiers.

## Specifications

* [Decentralized Identifiers](https://w3c.github.io/did-core/)
* DID Method Specification (missing)

## Example DIDs

```
did:dom:Jjbfgyu7My4RrbRNrXTPBz4PnhnMEE
```

## Build and Run (Docker)

```
docker build -f ./docker/Dockerfile . -t universalresolver/driver-did-dom
docker run -p 8080:8080 universalresolver/driver-did-dom
curl -X GET http://localhost:8080/1.0/identifiers/did:dom:Jjbfgyu7My4RrbRNrXTPBz4PnhnMEE
```

## Build (native Java)

 1. First, build https://github.com/decentralized-identity/universal-resolver/tree/master/resolver/java

Then run:

	mvn clean install

## Driver Environment Variables

The driver recognizes the following environment variables:

(none)

## Driver Metadata

The driver returns the following metadata in addition to a DID document:

(none)