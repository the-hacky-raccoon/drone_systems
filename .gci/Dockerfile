FROM sphinxdoc/sphinx:5.3.0

RUN pip install --upgrade --no-cache-dir sphinx_rtd_theme sphinx-serve

COPY ./ /docs

WORKDIR /docs/sphinx

RUN sphinx-build -d _build/doctrees . _build/html
