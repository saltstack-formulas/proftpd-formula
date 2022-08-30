# Changelog

## [1.0.1](https://github.com/saltstack-formulas/proftpd-formula/compare/v1.0.0...v1.0.1) (2022-08-30)


### Code Refactoring

* upgrade map.jinja to latest version ([fffc64e](https://github.com/saltstack-formulas/proftpd-formula/commit/fffc64e5a6faca0d195a959987196acef72df447))


### Styles

* uniformize template files headers ([911223c](https://github.com/saltstack-formulas/proftpd-formula/commit/911223ca01d290fd601f5599b1638d4eb0aec058))
* use 2 spaces for YAML indentation ([c004efc](https://github.com/saltstack-formulas/proftpd-formula/commit/c004efc4e1f7775f373557430b35c950fc434340))

# [1.0.0](https://github.com/saltstack-formulas/proftpd-formula/compare/v0.6.0...v1.0.0) (2022-07-18)


### Bug Fixes

* **contributing:** fix default dict to default list ([b84a1c7](https://github.com/saltstack-formulas/proftpd-formula/commit/b84a1c74f25f713a3477612a541ede9e650845d8))
* **contributing:** not enabled or disable ([0862407](https://github.com/saltstack-formulas/proftpd-formula/commit/08624075b8fdddd4a60a9b6bb2b0e6f38727e38c))


### Continuous Integration

* update `pre-commit` configuration inc. for pre-commit.ci [skip ci] ([f4b9dfa](https://github.com/saltstack-formulas/proftpd-formula/commit/f4b9dfa9605cd26ffd239fe92a95830b79b891e1))
* **kitchen+gitlab:** update for new pre-salted images [skip ci] ([648f454](https://github.com/saltstack-formulas/proftpd-formula/commit/648f454e640d1855347b6e20c49af57555a9a53b))


### Tests

* **system.rb:** add support for `mac_os_x` [skip ci] ([b212e3c](https://github.com/saltstack-formulas/proftpd-formula/commit/b212e3c3c9f57ae13ba3ab84c7aaf89408ca2989))


### BREAKING CHANGES

* **contributing:** The module dictionary becomes a list

# [0.6.0](https://github.com/saltstack-formulas/proftpd-formula/compare/v0.5.1...v0.6.0) (2022-03-30)


### Bug Fixes

* **pillar/default:** fix `yamllint` violations [skip ci] ([251155e](https://github.com/saltstack-formulas/proftpd-formula/commit/251155ebea0115cef8152f82f253a7cfe15c41a1))


### Continuous Integration

* update linters to latest versions [skip ci] ([ba07dbc](https://github.com/saltstack-formulas/proftpd-formula/commit/ba07dbca406a210f78d53ef7b1e3a06fadbdb91d))
* **gemfile:** allow rubygems proxy to be provided as an env var [skip ci] ([b8642ed](https://github.com/saltstack-formulas/proftpd-formula/commit/b8642ed28eee31719dcca8485fbf814a327c79b0))
* **kitchen+gitlab:** update for new pre-salted images [skip ci] ([112270b](https://github.com/saltstack-formulas/proftpd-formula/commit/112270b5eede9168a745aceb1383149a0ce727a3))


### Features

* **contributing:** add modules.conf management ([74ad102](https://github.com/saltstack-formulas/proftpd-formula/commit/74ad1027921db9951f012079b8e30ebb3572609d))


### Tests

* **system:** add `build_platform_codename` [skip ci] ([925b583](https://github.com/saltstack-formulas/proftpd-formula/commit/925b583aed6af8043a11e0584dd39f8d5d33e708))

## [0.5.1](https://github.com/saltstack-formulas/proftpd-formula/compare/v0.5.0...v0.5.1) (2021-11-25)


### Continuous Integration

* use `pillars_from_directories` & `test/salt/pillar/top.sls` ([c26bd1e](https://github.com/saltstack-formulas/proftpd-formula/commit/c26bd1edd6b4e1c296034d4e31339349e3510075))
* **3003.1:** update inc. AlmaLinux, Rocky & `rst-lint` [skip ci] ([0f28f28](https://github.com/saltstack-formulas/proftpd-formula/commit/0f28f28885c235294a952d1e1703925ca8121891))
* **gemfile+lock:** use `ssf` customised `inspec` repo [skip ci] ([16f3f8a](https://github.com/saltstack-formulas/proftpd-formula/commit/16f3f8a0d0f9c082caa2d241339b1d48970d422d))
* **kitchen:** move `provisioner` block & update `run_command` [skip ci] ([f0adb77](https://github.com/saltstack-formulas/proftpd-formula/commit/f0adb77b9f569f9d0d20e5dcc2aa2a37c5e4975e))
* **kitchen+ci:** update with `3004` pre-salted images/boxes [skip ci] ([cce6a7e](https://github.com/saltstack-formulas/proftpd-formula/commit/cce6a7eb533fa108d3798f9b96e2a796f291ad19))
* **kitchen+ci:** update with latest `3003.2` pre-salted images [skip ci] ([78a2131](https://github.com/saltstack-formulas/proftpd-formula/commit/78a21313484cbda164ad75a89c7d70914c16bf98))
* **kitchen+ci:** update with latest CVE pre-salted images [skip ci] ([cfe78ba](https://github.com/saltstack-formulas/proftpd-formula/commit/cfe78ba10ab7ca5581ec81cfe98d9524fc29a242))
* add `arch-master` to matrix and update `.travis.yml` [skip ci] ([2b72018](https://github.com/saltstack-formulas/proftpd-formula/commit/2b7201878a339e2c951555ee65e075f70fca105c))
* add Debian 11 Bullseye & update `yamllint` configuration [skip ci] ([6870dfd](https://github.com/saltstack-formulas/proftpd-formula/commit/6870dfdd68f69a481e67316823fb2eceee0b4885))
* **kitchen+gitlab:** remove Ubuntu 16.04 & Fedora 32 (EOL) [skip ci] ([f8e464d](https://github.com/saltstack-formulas/proftpd-formula/commit/f8e464d5b84480eeb18af2cb103f3e7909452440))


### Tests

* **pillar/debian:** disable `IdentLookups` for `Debian-11` [skip ci] ([ce6dec8](https://github.com/saltstack-formulas/proftpd-formula/commit/ce6dec830f4e960b8ef3da3ff08cecb71c846abc))

# [0.5.0](https://github.com/saltstack-formulas/proftpd-formula/compare/v0.4.0...v0.5.0) (2021-05-04)


### Continuous Integration

* **commitlint:** ensure `upstream/master` uses main repo URL [skip ci] ([7f56a30](https://github.com/saltstack-formulas/proftpd-formula/commit/7f56a30c111a6e75a15c138f59674d36e1e21bb8))
* **gemfile+lock:** use `ssf` customised `kitchen-docker` repo [skip ci] ([a99e057](https://github.com/saltstack-formulas/proftpd-formula/commit/a99e05770b1a27368bf120a7b76c954866c4446c))
* **gitlab-ci:** add `rubocop` linter (with `allow_failure`) [skip ci] ([335dba5](https://github.com/saltstack-formulas/proftpd-formula/commit/335dba562f1db48edf0c6d046c9b7350fc49f6e7))
* **gitlab-ci:** use GitLab CI as Travis CI replacement ([5f7ebf4](https://github.com/saltstack-formulas/proftpd-formula/commit/5f7ebf48a22ed8e2313036f07c6ff227e10a9e81))
* **kitchen+ci:** use latest pre-salted images (after CVE) [skip ci] ([ca24121](https://github.com/saltstack-formulas/proftpd-formula/commit/ca241219831f8b1f2491517f01747219b0d355ab))
* **kitchen+gitlab:** adjust matrix to add `3003` [skip ci] ([cfb2dea](https://github.com/saltstack-formulas/proftpd-formula/commit/cfb2dea407d08278551d8845854ccc9ad0c35c69))
* **kitchen+gitlab-ci:** use latest pre-salted images [skip ci] ([e902003](https://github.com/saltstack-formulas/proftpd-formula/commit/e902003690f3b8cb181fa38a33a98ee3b8aa4a36))
* **pre-commit:** add to formula [skip ci] ([a1fc4a7](https://github.com/saltstack-formulas/proftpd-formula/commit/a1fc4a78513d8d5e5ec90a5630fcf85e3ebaf1fb))
* **pre-commit:** enable/disable `rstcheck` as relevant [skip ci] ([e3f2b25](https://github.com/saltstack-formulas/proftpd-formula/commit/e3f2b258c83182efec31d630d811824545f89145))
* **pre-commit:** finalise `rstcheck` configuration [skip ci] ([b297224](https://github.com/saltstack-formulas/proftpd-formula/commit/b29722456e7fbce00de1e82f363e97405737af03))
* **pre-commit:** update hook for `rubocop` [skip ci] ([b85c2cd](https://github.com/saltstack-formulas/proftpd-formula/commit/b85c2cd50315d7f0ea4aeb6faa2dda2e45d36f89))


### Features

* **gentoo:** add support ([ef38008](https://github.com/saltstack-formulas/proftpd-formula/commit/ef38008c8e3813fdd2261451f38262502aced6cb))


### Tests

* standardise use of `share` suite & `_mapdata` state [skip ci] ([22c784e](https://github.com/saltstack-formulas/proftpd-formula/commit/22c784e246ea9027e4acb41a4b05476902f4d924))
* **pillar/redhat:** disable `IdentLookups` for `Fedora-33` ([0461052](https://github.com/saltstack-formulas/proftpd-formula/commit/046105265132c55dabdd8ab876bc6c8f26da661d))
