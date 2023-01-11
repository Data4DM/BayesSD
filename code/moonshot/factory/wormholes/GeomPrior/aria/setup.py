from setuptools import setup, find_packages

setup(
    name="aria",
    version="0.1.0",
    install_requires=[
        "appdirs",
        "pandas",
        "numpy",
        "scipy",
        "scikit-learn",
    ],
    packages=find_packages(),
    package_data={
        'aria': ['stan/*', 'examples/*'],
    },
)
