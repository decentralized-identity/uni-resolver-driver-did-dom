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
## Configuration
For downloading the dependencies of this project a Personal Access Token for GitHub must be configured in file [settings.xml](https://github.com/decentralized-identity/uni-resolver-driver-did-ccp/blob/release-0.1.x/settings.xml) according to [Creating a personal access token for the command line](https://help.github.com/en/github/authenticating-to-github/creating-a-personal-access-token-for-the-command-line).
Then, add the USER Name and TOKEN to the environment variable as follows,

    GITHUB_READ_PACKAGES_OWNER=OWNER
    GITHUB_READ_PACKAGES_TOKEN=TOKEN

## Build and Run (Docker)

```
docker build -f ./docker/Dockerfile . -t universalresolver/driver-did-dom
docker run -p 8080:8080 universalresolver/driver-did-dom
curl -X GET http://localhost:8080/1.0/identifiers/did:dom:Jjbfgyu7My4RrbRNrXTPBz4PnhnMEE
```

    
## Build (native Java)
Maven build:

	mvn --settings settings.xml clean install

## Driver Environment Variables

The driver recognizes the following environment variables:

(none)

## Driver Metadata

The driver returns the following metadata in addition to a DID document:

(none)
