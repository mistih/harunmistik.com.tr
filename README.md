## harunmistik.com.tr

Source code for my personal website built with bash and
[esh](https://github.com/jirutka/esh).

### Development

If you notice any typos feel free to submit a PR. All site content is in the
/posts directory.

Fork this repository and clone your fork:

```bash
git clone https://github.com/{username}/harunmistik.com.tr.git
```

Make changes and generate static assets:

```bash
poetry shell
poetry install
./bin/last-modified
./bin/generate-index
./bin/generate-projects
```
