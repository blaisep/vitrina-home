import os
import sys


sys.path.insert(0, os.path.abspath("source"))

# -- Project information -----------------------------------------------------
project = 'Vitrina'
copyright = '2022, Blaise Pabon'
author = 'blaise at gmail'

# -- General configuration ---------------------------------------------------
extensions = [
    'sphinx.ext.todo',
     'sphinx.ext.viewcode', # enables the "view page's source code" option in the HTML.
#     'sphinxcontrib.plantuml', # enable plantuml diagrams and directives.
     'sphinx_copybutton', # pip install sphinx-copybutton (note the hyphen!)
      ]

templates_path = ['_templates']
source_suffix = ['.rst', 'md']
exclude_patterns = ['_build',
                    'Thumbs.db',
                    '.DS_Store',
                    ]
# -- Options for HTML output
html_static_path = ['_static']
pygments_style = "friendly"
html_theme = "furo"  # python3 -m pip install furo
