#!/usr/bin/env bash
rm -rf dist
rm -rf build
rm -rf flask_arangodb.egg-info
python setup.py sdist
python setup.py bdist_wheel
twine register dist/*.whl
twine upload dist/*