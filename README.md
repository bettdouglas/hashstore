# wordstore

[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]
[![License: MIT][license_badge]][license_link]

A Very Good Project created by Very Good CLI.

[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg
[license_link]: https://opensource.org/licenses/MIT
[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg
[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis

# What is HashStore

It's an experiment to see if I can implement a custom hashing solution to encrypt things. 

Let's say we have an input string

```input = 'Hello Github'```

when hashed, we'll have something like

```hash = 1,2```

```hashStore = {1:'Hello',2: 'Github'}```

The hashStore is meant to be kept private as this is what will be used to decode the hash back to the original string. 

That's basically what this playground is. Nothing fancy, just an experiment.
