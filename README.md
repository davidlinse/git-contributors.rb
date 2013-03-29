### git-contributors.rb (0.1.0)

contributor stats for your git repository.

#### Description
Takes the result of `$ git shortlog -sn` and adds the percental contribution of each committer to the output.

#### Synopsis

```bash
$ ruby git-contributors.rb /path/to/repository-dir
```

Which gives you an output like ...

```
 200 Maja                 56.8 %
  50 Flip                 31.1 %
  10 Willi                10.8 %
```

#### Requirements

```shell
$ ruby -v #=> ruby 1.9.3p125
$ git --version #=> 1.7+
```

#### Developer notes

* claim to follow versioning guide-lines proposed by [semver.org][semver]
* keep as simple as possible


#### History

* 0.1.0 initial commit


[semver]: http://semver.org

#### Licence

(The MIT License)

Copyright (c) 2013 David Linse <davidlinse@gmail.com>

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation
files (the 'Software'), to deal in the Software without restriction, including without limitation the rights to use, copy,
modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the
Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO
THEWARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
