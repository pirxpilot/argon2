[![NPM version][npm-image]][npm-url]
[![Build Status][build-image]][build-url]
[![Dependency Status][deps-image]][deps-url]
[![Financial contributors on Open Collective][opencollective-image]][opencollective-url]

# @pirxpilot/argon2

This is a fork of [node-argon2] that is using [`crypto.argon2`][crypto.argon2] implementation as described in [#469]
It can be used with node >= 24.7.0

## Usage
It's possible to hash using either Argon2i, Argon2d or Argon2id (default), and
verify if a password matches a hash.

To hash a password:
```js
import * as argon2 from '@pirxpilot/argon2';

try {
  const hash = await argon2.hash("password");
} catch (err) {
  //...
}
```

To verify a password:
```js
try {
  if (await argon2.verify("<big long hash>", "password")) {
    // password match
  } else {
    // password did not match
  }
} catch (err) {
  // internal failure
}
```

> [!NOTE]
> By default, argon2.hash will generate secure hashes according to the security recommendations by the team that develops Argon2.
> **For password hashing, there is no need to modify them.**

To see how you can modify the output (hash length, encoding) and parameters
(time cost, memory cost and parallelism),
[read the wiki](https://github.com/ranisalt/node-argon2/wiki/Options)

## Contributors

### Code contributors

This project exists thanks to all the people who contribute. [[Contribute](CONTRIBUTING.md)].
<a href="https://github.com/ranisalt/node-argon2/graphs/contributors"><img src="https://opencollective.com/node-argon2/contributors.svg?width=890&button=false" /></a>

### Financial contributors

Become a financial contributor and help us sustain our community. [[Contribute](https://opencollective.com/node-argon2/contribute)]

#### Individuals

<a href="https://opencollective.com/node-argon2"><img src="https://opencollective.com/node-argon2/individuals.svg?width=890"></a>

#### Organizations

Support this project with your organization. Your logo will show up here with a link to your website. [[Contribute](https://opencollective.com/node-argon2/contribute)]

<a href="https://opencollective.com/node-argon2/organization/0/website"><img src="https://opencollective.com/node-argon2/organization/0/avatar.svg"></a>
<a href="https://opencollective.com/node-argon2/organization/1/website"><img src="https://opencollective.com/node-argon2/organization/1/avatar.svg"></a>
<a href="https://opencollective.com/node-argon2/organization/2/website"><img src="https://opencollective.com/node-argon2/organization/2/avatar.svg"></a>
<a href="https://opencollective.com/node-argon2/organization/3/website"><img src="https://opencollective.com/node-argon2/organization/3/avatar.svg"></a>
<a href="https://opencollective.com/node-argon2/organization/4/website"><img src="https://opencollective.com/node-argon2/organization/4/avatar.svg"></a>
<a href="https://opencollective.com/node-argon2/organization/5/website"><img src="https://opencollective.com/node-argon2/organization/5/avatar.svg"></a>
<a href="https://opencollective.com/node-argon2/organization/6/website"><img src="https://opencollective.com/node-argon2/organization/6/avatar.svg"></a>
<a href="https://opencollective.com/node-argon2/organization/7/website"><img src="https://opencollective.com/node-argon2/organization/7/avatar.svg"></a>
<a href="https://opencollective.com/node-argon2/organization/8/website"><img src="https://opencollective.com/node-argon2/organization/8/avatar.svg"></a>
<a href="https://opencollective.com/node-argon2/organization/9/website"><img src="https://opencollective.com/node-argon2/organization/9/avatar.svg"></a>

## License
Work licensed under the [MIT License](LICENSE). Please check
[P-H-C/phc-winner-argon2](https://github.com/P-H-C/phc-winner-argon2) for
license over Argon2 and the reference implementation.

[opencollective-image]: https://img.shields.io/opencollective/all/node-argon2.svg?style=flat-square
[opencollective-url]: https://opencollective.com/node-argon2
[node-argon2]: https://www.npmjs.com/package/argon2
[#469]: https://github.com/ranisalt/node-argon2/issues/469
[crypto.argon2]: https://nodejs.org/api/crypto.html#cryptoargon2algorithm-parameters-callback

[npm-image]: https://img.shields.io/npm/v/@pirxpilot/argon2
[npm-url]: https://npmjs.org/package/@pirxpilot/argon2

[build-url]: https://github.com/pirxpilot/argon2/actions/workflows/check.yaml
[build-image]: https://img.shields.io/github/actions/workflow/status/pirxpilot/argon2/check.yaml?branch=main

[deps-image]: https://img.shields.io/librariesio/release/npm/@pirxpilot/argon2
[deps-url]: https://libraries.io/npm/@pirxpilot%2Fargon2
