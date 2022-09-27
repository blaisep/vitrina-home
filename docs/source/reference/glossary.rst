.. _glossary:

Terms & concepts
================

.. glossary::

    ADR
        An architectural decision record is a set of facts describing the items we take into consideration when we choose to do one thing and not another.

    bind
        to link, or associate, one item with another. For sample, DNS binds hostnames to IP addresses.

    acceptance tests
        A sequence of steps or criteria to align the implementation with the user requirements.

    APM
        Application Performance Monitoring: |about_APM|

    BDD
    Behavior Driven Development
        A behavior is how a feature operates within a well-defined scenario of inputs, actions, and outcomes. Behaviors are identified using specification by example. Behavior specs become the requirements, the acceptance criteria, and the acceptance tests. Test frameworks can directly automate specs as well – declarative specs for unique product behaviors should be the units of coverage. The `cucumber project site <https://cucumber.io/docs/bdd/>`_

    Conformance tests
        Serve to distinguish between the default behavior and any enhancements that a developer or contributor may  add.

    claims
    claim
        A statement or comment indicating a fact. It should have a link to the supporting :term:`evidence`.

    Control Plane
        The control plane is the part of a network that controls how data packets are forwarded — meaning how data is sent from one place to another.

    Data Plane
        In contrast to the control plane, which determines how packets should be forwarded, the data plane actually forwards the packets. The data plane is also called the forwarding plane.

    evidence
        An observation or a fact that supports a :term:`claim` . Typically represented by a URL, or a field in an authoritative record. There should be a way to validate its authenticity and a method to reproduce it.

    Functional tests
        Explore the question "Does the final behavior agree with the feature description?"

    Integration tests
        Explore the question "Does this new code conflict with the rest of the project?"

    PBT
    Property-based testing
        Property based testing is the construction of tests such that, when these tests are fuzzed, failures in the test reveal problems with the system under test that could not have been revealed by direct fuzzing of that system. Some may consider fuzzing to be a rudimentary form of :term:`PBT`

    Resource
        A resource is a particular action for a given service (typically an individual endpoint or query). A helpful
        mnemonic could be: *A service...provides (serves) a resource*

    SDLC
        Software Development Lifecycle. POC-> Prototype -> MVP (see diagram)ß

    Service
        Services are the building blocks of modern microservice architectures.
        Broadly speaking, a service groups together endpoints, queries, or jobs for the purposes of scaling instances

    Unit tests
        Explores the question "Does this change work as expected"

.. Substitutions

.. |about_APM| replace:: https://docs.datadoghq.com/tracing/visualization/#pagetitle
.. |PBT| replace:: https://hypothesis.works/articles/what-is-property-based-testing/


