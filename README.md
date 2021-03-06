# Trout Client

_Automatically derived XHR clients for Trout routing types._

## Usage

```bash
bower install --save purescript-trout-client
```

## Examples

### [Client/Server](example/client-server/src)

This example shows the integration of client and server based on a common
[Trout](https://github.com/purescript-hyper/purescript-trout) routing type for
an API. AJAX clients are generated by this package for all endpoints, and the
client-side application can safely request resources without having to
duplicate routing information and JSON encoding and decoding instances.

```bash
make client-server-example
```

### [Client Only](example/client/src/Main.purs)

This example demonstrates how AJAX clients can be derived from a
[Trout](https://github.com/purescript-hyper/purescript-trout) routing type that
models a foreign API.

```bash
make client-example
```

## API Documentation

This library's API documentation is published [on Pursuit](https://pursuit.purescript.org/packages/purescript-trout-client).

## Changelog

* **0.12.1**
  - Updates for new version of Argonaut
* **0.12.0**
  - Added support for `ReqBody` and `Header` combinators.
  - Various dependency upgrades
* **0.11.0**
  - Updates for PureScript 0.13
  - Various dependency upgrades
  - Conversion to Spago as primary package manager and build tool
* **0.10.0**
  - Added instances for `QueryParam` and `QueryParams`
* **0.8.0**
  - Upgraded to Trout 0.10.0, and all clients are now derived as records, based
    on the named routing types. Specific methods of a resource are accesible
    under the corresponding uppercase field in the resource client record, e.g.
    `site.admin.logs."GET"`.

## License

[Mozilla Public License Version 2.0](LICENSE)
