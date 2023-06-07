.. .............................................................................
..
..  This file is part of the Jancy toolkit.
..
..  Jancy is distributed under the MIT license.
..  For details see accompanying license.txt file,
..  the public copy of which is also available at:
..  http://tibbo.com/downloads/archive/jancy/license.txt
..
.. .............................................................................

Jancy (bundle repo)
===================
.. image:: https://github.com/vovkos/jancy_b/actions/workflows/ci.yml/badge.svg
	:target: https://github.com/vovkos/jancy_b/actions/workflows/ci.yml
.. image:: https://img.shields.io/badge/donate-@jancy.org-blue.svg
	:align: right
	:target: http://jancy.org/donate.html?donate=jancy

Abstract
--------

``jancy_b`` is a helper *bundle repository* for the **Jancy** project. It contains `Jancy <https://github.com/vovkos/jancy>`_, `Graco <https://github.com/vovkos/graco>`_, `Doxyrest <https://github.com/vovkos/doxyrest>`_, and `AXL <https://github.com/vovkos/axl>`_ as *git submodules* and provides a straightforward build sequence:

.. code-block:: bash

	# clone bundle repo

	git clone https://github.com/vovkos/jancy_b
	cd jancy_b
	git submodule update --init

	# build

	mkdir build
	cd build
	cmake ..
	cmake --build .

``jancy_b`` is automatically updated each time a new commit to the ``master`` branch of `Jancy <https://github.com/vovkos/jancy>`_ successfully passes build and test stages on `GitHub Action <https://github.com/vovkos/jancy/actions>`_.
