# prelink

#### Table of Contents

1. [Overview](#overview)
2. [Module Description](#module-description)
3. [Setup](#setup)
    * [What prelink affects](#what-prelink-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with prelink](#beginning-with-prelink)
4. [Usage](#usage)
5. [Reference](#reference)
5. [Limitations](#limitations)
6. [Development](#development)
    * [TODO](#todo)
    * [Contributing](#contributing)

## Overview

The prelink package contains a utility which modifies ELF shared libraries
and executables, so that far fewer relocations need to be resolved at runtime
and thus programs come up faster.

## Module Description

This module is intended to disable prelinking (default behaviour), thus there are not many options to manage it

## Setup

### What prelink affects

* prelink package
* prelink system's config file

### Setup Requirements

This module requires pluginsync enabled

### Beginning with prelink

Including this class will disable prelinking:

```
class { 'prelink': }
```

## Usage

```
class { 'prelink':
  prelinking => false,
}
```

## Reference

### prelink
* **prelinking**: (default: false)

## Limitations

Tested on:
* CentOS 5
* CentOS 6
* CentOS 7
* Ubuntu 14.04

## Development

We are pushing to have acceptance testing in place, so any new feature should
have some test to check both presence and absence of any feature

### TODO

TODO list

### Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
