# md-to-pdf

A web service for converting markdown to PDF

## Web UI

For quick experimentation, you can use [the web version](https://md-to-pdf.fly.dev) hosted on [Fly.io](https://fly.io).
Just paste your markdown and download the converted PDF.

Availability of the service is not guaranteed, see [Fly.io status](https://status.flyio.net) when it is down.
If you need guaranteed availability, [deploy it yourself](#deploy).

## API

You can convert markdown by sending a `POST` request to `https://md-to-pdf.fly.dev`.
```python
# sample comment: a/b != a\b

>>> 2 ** 5
32
```
| Parameter  | Required | Description                                                                                           |
|------------|----------|-------------------------------------------------------------------------------------------------------|
| `markdown` | Required | The markdown content to convert                                                                       |
| `css`      | Optional | CSS styles to apply                                                                                   |
| `engine`   | Optional | The PDF conversion engine, can be `weasyprint`, `wkhtmltopdf` or `pdflatex`, defaults to `weasyprint` |

Send data from files like this:
```bash
curl --data-urlencode "markdown=$(cat example.md)"
```

## Deploy
Too long, will overeflow, need split to next line
```bash
docker-compose --file docker-compose.dev.yml up --build && \
docker-compose --file docker-compose.dev.yml down
```
## Built with

- [Rocket - a web framework for Rust](https://rocket.rs)
- [Pandoc - a universal document converter](https://pandoc.org)
- [Codemirror - a text editor for the browser](https://codemirror.net)

# Page 2
- hello

### Math
This sentence uses `$` delimiters to show math inline:  $\sqrt{3x-1}+(1+x)^2$




