#!/usr/bin/env bash
rm -rf dist
rm -rf build
rm -rf flask_arangodb.egg-info
python setup.py sdist
python setup.py bdist_wheel
python setup.py register
twine upload dist/*