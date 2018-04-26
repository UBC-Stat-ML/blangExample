Summary
-------

[![Build Status](https://travis-ci.org/UBC-Stat-ML/blangExample.png?branch=master)](https://travis-ci.org/UBC-Stat-ML/blangExample)

A simple blang project template. 

Usage
-----

Requires Java 8 and git.

Check out the source ``git clone https://github.com/UBC-Stat-ML/blangExample.git``

### Blang desktop IDE (eclipse)


- Type ``./gradlew eclipse`` from the root of the repository
- From eclipse:
  - ``Import`` in ``File`` menu
  - ``Import existing projects into workspace``
  - Select the root of this repository


### Running example from terminal

- ``./gradlew installDist``
- Run the example as follows

```
./build/install/example/bin/example \
    --model.observations.file data/primates.fasta \
    --model.observations.encoding DNA \
    --engine SCM \
    --engine.nThreads MAX \
    --excludeFromOutput observations
```# PT_blang_rate
