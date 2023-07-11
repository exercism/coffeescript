# Installation

## Install Node.js

**Windows and OS X users**: Install [Node.js][node] [via package manager][node-download].

**Linux users**: Install [Node.js][node] via the instructions found for your distribution on the [Node.js package manager][linstall].

## Install `jasmine-node` and `coffeescript`

For most users this will be as simple as running the following command:

```bash
$ npm install -g jasmine-node coffeescript
```

Depending on your setup, you may need super user privileges to install an `npm` module globally.
This is the case if you've used the official installer linked to above.
If NPM gives you an error saying you don't have access, add `sudo` to the command above:

```bash
$ sudo npm install -g jasmine-node coffeescript
```

If you've used the official installer, your `PATH` should have been automatically configured, but if your shell has trouble locating your globally installed modules--or if you build Node.js from source.
Then update your `PATH` to include the `npm` binaries by adding the following to either `~/.bash_profile` or `~/.zshrc`:

```bash
$ export PATH=/usr/local/share/npm/bin:$PATH
```

[node]: http://nodejs.org/
[node-download]: https://nodejs.org/en/download
[linstall]: https://nodejs.org/en/download/package-manager
