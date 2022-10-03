# Created by bpabon at 6/2/21
Feature: Diagrams derived from PlantUML syntax
"""Diagrams are images produced from a block of text, the reference implementation uses PlantUML syntax.

  It's possible to use a different rendering tool, such as mermaid.js, as long as you consider the impact on
  other diagrams which are likely written using PlantUML.
"""
  Scenario Outline:
  """In this scenario, the source of the diagrams is included in the doc source for rendering at build time.
    This scenario does not apply when diagrams are included as static images.
  """

  Scenario: A sequence diagram
  """For details, see https://plantuml.com/sequence-diagram
  """
	Given a block of text describes a sequence of event
	When Sphinx runs the PlantUML extension
	Then the Sphinx builder writes a PNG file to the output directory

  Scenario: A context diagram; the top-level object
  """For details, see https://crashedmind.github.io/PlantUMLHitchhikersGuide/C4/C4Stdlib.html#context
  """
	Given diagrams use PlantUML syntax
	When the Sphinx builder processes the text source for a diagram
	Then the Sphinx builder writes a PNG file to the output directory

  Scenario: A container diagram
  """For details, see https://crashedmind.github.io/PlantUMLHitchhikersGuide/C4/C4Stdlib.html#container
  """
	Given diagrams use PlantUML syntax
	When the Sphinx builder processes the text source for a diagram
	Then the Sphinx builder writes a PNG file to the output directory

  Scenario: A component diagram; the software artifact
  """For details, see https://crashedmind.github.io/PlantUMLHitchhikersGuide/C4/C4Stdlib.html#component
  """
	Given diagrams use PlantUML syntax
	When the Sphinx builder processes the text source for a diagram
	Then the Sphinx builder writes a PNG file to the output directory

