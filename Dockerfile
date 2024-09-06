FROM python:3-alpine

# https://stackoverflow.com/questions/69919970/no-module-named-distutils-util-but-distutils-installed
RUN pip install setuptools

COPY run-clang-format.py /run-clang-format.py
COPY entrypoint.sh /entrypoint.sh
COPY clang-format/ /clang-format/

ENTRYPOINT ["/entrypoint.sh"]