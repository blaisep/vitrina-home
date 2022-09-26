==========================
Contributor's guide
==========================

Before a push
===================================


Fix spelling before you push

Fix these kinds of errors and warnings:

.. code-block::

	reading sources... [100%] index
	/Users/bpabon/src/python3/controlplane/highly-unlikely-site/docs/source/define/index.rst:4: WARNING: Error in "toctree" directive:
	Unknown option: "titles-only".
	looking for now-outdated files... none found
	pickling environment... done
	checking consistency... /Users/bpabon/src/python3/controlplane/highly-unlikely-site/docs/source/define/index.rst: WARNING: document isn't included in any toctree
	/Users/bpabon/src/python3/controlplane/highly-unlikely-site/docs/source/define/mysteries.rst: WARNING: document isn't included in any toctree
	/Users/bpabon/src/python3/controlplane/highly-unlikely-site/docs/source/define/signals.rst: WARNING: document isn't included in any toctree
	/Users/bpabon/src/python3/controlplane/highly-unlikely-site/docs/source/glossary.rst: WARNING: document isn't included in any toctree
	done


Before a merge
==============

Does it build without errors?
Should the errors be marked as "expected"?
Check for security in the supply chain.

Before a release
=================

Pull out the debugging signals and asserts.
Scan the dependencies
Does it build without errors?




.. Substitutions

.. |KOPF| replace:: https://kopf.readthedocs.io/en/stable/contributing/
.. |bostian| replace:: https://github.com/emmabostian/developer-portfolios
